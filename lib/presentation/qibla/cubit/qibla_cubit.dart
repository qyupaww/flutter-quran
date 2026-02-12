import 'dart:async';
import 'package:adhan/adhan.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_quran/domain/cubit/safe_cubit.dart';
import 'package:flutter_quran/utils/manager/shared_manager.dart';

part 'qibla_state.dart';
part 'qibla_cubit.freezed.dart';

class QiblaCubit extends SafeCubit<QiblaState> {
  StreamSubscription<CompassEvent>? _compassSubscription;

  QiblaCubit() : super(const QiblaState());

  Future<void> init() async {
    emit(state.copyWith(status: QiblaStatus.loading));

    // 1. Load saved location
    final managerStr = SharedManager<String>();
    final managerDouble = SharedManager<double>();

    final savedName = await managerStr.read('location_name');
    final savedLat = await managerDouble.read('location_lat');
    final savedLong = await managerDouble.read('location_long');

    double lat;
    double lon;
    String locationName;

    if (savedLat != null && savedLong != null) {
      lat = savedLat;
      lon = savedLong;
      locationName = savedName ?? "Lokasi Tersimpan";
    } else {
      // Default: Jakarta
      lat = -6.2088;
      lon = 106.8456;
      locationName = "Jakarta, Indonesia";
    }

    // 2. Calculate Qibla direction using Adhan
    final coordinates = Coordinates(lat, lon);
    final qiblaDirection = Qibla(coordinates).direction;

    emit(state.copyWith(
      qiblaDirection: qiblaDirection,
      locationName: locationName,
    ));

    // 3. Start compass stream
    _startCompass();
  }

  void _startCompass() {
    try {
      _compassSubscription = FlutterCompass.events?.listen(
        (CompassEvent event) {
          final heading = event.heading;
          if (heading != null) {
            emit(state.copyWith(
              status: QiblaStatus.ready,
              compassHeading: heading,
            ));
          }
        },
        onError: (error) {
          emit(state.copyWith(
            status: QiblaStatus.error,
            errorMessage: "Sensor kompas tidak tersedia",
          ));
        },
      );

      // If stream is null, sensor not available
      if (_compassSubscription == null) {
        emit(state.copyWith(
          status: QiblaStatus.noSensor,
          errorMessage: "Perangkat tidak memiliki sensor kompas",
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: QiblaStatus.noSensor,
        errorMessage: "Sensor kompas tidak tersedia di perangkat ini",
      ));
    }
  }

  @override
  Future<void> close() {
    _compassSubscription?.cancel();
    return super.close();
  }
}
