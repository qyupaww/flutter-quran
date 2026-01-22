import 'dart:async';
import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_quran/utils/manager/shared_manager.dart';

part 'prayer_time_event.dart';
part 'prayer_time_state.dart';
part 'prayer_time_bloc.freezed.dart';

class PrayerTimeBloc extends Bloc<PrayerTimeEvent, PrayerTimeState> {
  Timer? _countdownTimer;
  Timer? _dateToggleTimer;
  Coordinates? _currentCoordinates;

  PrayerTimeBloc() : super(const PrayerTimeState()) {
    on<_Started>(_onStarted);
    on<_LocationChanged>(_onLocationChanged);
    on<_TimerTicked>(_onTimerTicked);
    on<_ToggleDateFormat>(_onToggleDateFormat);
  }

  void _onStarted(_Started event, Emitter<PrayerTimeState> emit) async {
    // Start Tickers
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const PrayerTimeEvent.timerTicked());
    });

    _dateToggleTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      add(const PrayerTimeEvent.toggleDateFormat());
    });

    // Load saved location
    final managerStr = SharedManager<String>();
    final managerDouble = SharedManager<double>();

    final savedName = await managerStr.read('location_name');
    final savedLat = await managerDouble.read('location_lat');
    final savedLong = await managerDouble.read('location_long');

    if (savedName != null && savedLat != null && savedLong != null) {
      emit(state.copyWith(locationName: savedName, isLoading: true));
      _currentCoordinates = Coordinates(savedLat, savedLong);
      _calculatePrayerTimes(emit);
    } else {
      // Default: Jakarta (-6.2088, 106.8456)
      _currentCoordinates = Coordinates(-6.2088, 106.8456);
      emit(state.copyWith(locationName: "Jakarta, Indonesia", isLoading: true));
      _calculatePrayerTimes(emit);
    }
  }

  void _onLocationChanged(
      _LocationChanged event, Emitter<PrayerTimeState> emit) async {
    final name = "${event.district}, ${event.city}";
    emit(state.copyWith(locationName: name, isLoading: true));

    _currentCoordinates = Coordinates(event.lat, event.long);
    _calculatePrayerTimes(emit);

    // Save to prefs
    final managerStr = SharedManager<String>();
    final managerDouble = SharedManager<double>();
    await managerStr.store('location_name', name);
    await managerDouble.store('location_lat', event.lat);
    await managerDouble.store('location_long', event.long);
  }

  void _onToggleDateFormat(
      _ToggleDateFormat event, Emitter<PrayerTimeState> emit) {
    final now = DateTime.now();
    String newDateString;

    if (!state.isHijri) {
      // Switch to Hijri
      var hijriDate = HijriCalendar.fromDate(now);
      newDateString =
          hijriDate.toFormat("dd MMMM yyyy"); // e.g., 14 Ramadan 1445
    } else {
      // Switch to Gregorian
      newDateString = DateFormat("dd MMMM yyyy", "id_ID").format(now);
    }

    emit(state.copyWith(
      isHijri: !state.isHijri,
      currentDateDisplay: newDateString,
    ));
  }

  void _onTimerTicked(_TimerTicked event, Emitter<PrayerTimeState> emit) {
    if (_currentCoordinates == null) return;
    _calculatePrayerTimes(emit);
  }

  void _calculatePrayerTimes(Emitter<PrayerTimeState> emit) {
    final coordinates = _currentCoordinates!;
    final params =
        CalculationMethod.singapore.getParameters(); // Common for Indonesia
    params.madhab = Madhab.shafi;

    final now = DateTime.now();
    final prayerTimes = PrayerTimes.today(coordinates, params);

    // Find next prayer
    final next = prayerTimes.nextPrayer();
    final nextTime = prayerTimes.timeForPrayer(next);

    // Prepare list for UI
    final prayers = [
      {
        'name': 'Subuh',
        'time': DateFormat('HH:mm').format(prayerTimes.fajr),
        'icon': 'cloud_outlined'
      },
      {
        'name': 'Dzuhur',
        'time': DateFormat('HH:mm').format(prayerTimes.dhuhr),
        'icon': 'wb_sunny_outlined'
      },
      {
        'name': 'Ashar',
        'time': DateFormat('HH:mm').format(prayerTimes.asr),
        'icon': 'wb_sunny'
      },
      {
        'name': 'Maghrib',
        'time': DateFormat('HH:mm').format(prayerTimes.maghrib),
        'icon': 'wb_twilight_outlined'
      },
      {
        'name': 'Isya',
        'time': DateFormat('HH:mm').format(prayerTimes.isha),
        'icon': 'nightlight_round'
      },
    ];

    String hLeft = "00";
    String mLeft = "00";
    String sLeft = "00";
    String nextNameStr = "";
    String nextTimeStr = "";

    if (nextTime != null) {
      final diff = nextTime.difference(now);
      if (!diff.isNegative) {
        hLeft = diff.inHours.toString().padLeft(2, '0');
        mLeft = (diff.inMinutes % 60).toString().padLeft(2, '0');
        sLeft = (diff.inSeconds % 60).toString().padLeft(2, '0');
      }
      // Format Next Prayer Name
      nextNameStr = _mapPrayerName(next);
      nextTimeStr = DateFormat('HH:mm a').format(nextTime);
    } else {
      // All prayers done for today
      if (next == Prayer.none) {
        // Logic for next day can be added here
      }
    }

    emit(state.copyWith(
      isLoading: false,
      prayerTimesData: prayerTimes,
      dailyPrayers: prayers,
      hoursLeft: hLeft,
      minutesLeft: mLeft,
      secondsLeft: sLeft,
      nextPrayerName: nextNameStr,
      nextPrayerTime: nextTimeStr,
    ));
  }

  String _mapPrayerName(Prayer p) {
    switch (p) {
      case Prayer.fajr:
        return "Subuh";
      case Prayer.sunrise:
        return "Terbit";
      case Prayer.dhuhr:
        return "Dzuhur";
      case Prayer.asr:
        return "Ashar";
      case Prayer.maghrib:
        return "Maghrib";
      case Prayer.isha:
        return "Isya";
      default:
        return "-";
    }
  }

  @override
  Future<void> close() {
    _countdownTimer?.cancel();
    _dateToggleTimer?.cancel();
    return super.close();
  }
}
