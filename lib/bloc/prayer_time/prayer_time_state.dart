part of 'prayer_time_bloc.dart';

@freezed
abstract class PrayerTimeState with _$PrayerTimeState {
  const factory PrayerTimeState({
    @Default(false) bool isLoading,
    @Default('') String locationName,
    @Default('00') String hoursLeft,
    @Default('00') String minutesLeft,
    @Default('00') String secondsLeft,
    @Default('') String nextPrayerName,
    @Default('') String nextPrayerTime,
    @Default('') String currentDateDisplay,
    @Default(false) bool isHijri,
    @JsonKey(includeFromJson: false, includeToJson: false)
    dynamic prayerTimesData,
    @Default([]) List<Map<String, String>> dailyPrayers,
  }) = _PrayerTimeState;
}
