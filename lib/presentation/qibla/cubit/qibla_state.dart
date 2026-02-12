part of 'qibla_cubit.dart';

enum QiblaStatus { loading, ready, error, noSensor }

@freezed
abstract class QiblaState with _$QiblaState {
  const factory QiblaState({
    @Default(QiblaStatus.loading) QiblaStatus status,
    @Default(0.0) double qiblaDirection,
    @Default(0.0) double compassHeading,
    @Default("") String locationName,
    String? errorMessage,
  }) = _QiblaState;
}
