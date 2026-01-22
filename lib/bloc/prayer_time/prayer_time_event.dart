part of 'prayer_time_bloc.dart';

@freezed
class PrayerTimeEvent with _$PrayerTimeEvent {
  const factory PrayerTimeEvent.started() = _Started;
  const factory PrayerTimeEvent.locationChanged(String province, String city,
      String district, double lat, double long) = _LocationChanged;
  const factory PrayerTimeEvent.timerTicked() = _TimerTicked;
  const factory PrayerTimeEvent.toggleDateFormat() = _ToggleDateFormat;
}
