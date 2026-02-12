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

  Future<void> init({double? lat, double? long, String? name}) async {
    emit(state.copyWith(status: QiblaStatus.loading));

    if (lat != null && long != null && name != null) {
      updateLocation(lat, long, name);
      _startCompass();
      return;
    }

    // 1. Load saved location if not provided
    final managerStr = SharedManager<String>();
    final managerDouble = SharedManager<double>();

    final savedName = await managerStr.read('location_name');
    final savedLat = await managerDouble.read('location_lat');
    final savedLong = await managerDouble.read('location_long');

    if (savedLat != null && savedLong != null) {
      updateLocation(savedLat, savedLong, savedName ?? "Lokasi Tersimpan");
    } else {
      // Default: Jakarta
      updateLocation(-6.2088, 106.8456, "Jakarta, Indonesia");
    }

    // 2. Start compass stream
    _startCompass();
  }

  void updateLocation(double lat, double long, String name) {
    if (isClosed) return;

    final coordinates = Coordinates(lat, long);
    final qiblaDirection = Qibla(coordinates).direction;

    emit(state.copyWith(
      qiblaDirection: qiblaDirection,
      locationName: name,
      status: state.status == QiblaStatus.loading
          ? QiblaStatus.ready
          : state.status, // Keep current status if already ready/error
    ));

    // Ensure status is ready if it was loading
    if (state.status == QiblaStatus.loading) {
      _startCompass();
    }
  }

  void _startCompass() {
    if (_compassSubscription != null) return; // Already started

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
