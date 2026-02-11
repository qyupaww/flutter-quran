part of 'location_picker_cubit.dart';

@freezed
abstract class LocationPickerState with _$LocationPickerState {
  const factory LocationPickerState({
    @Default(true) bool isLoading,
    @Default(null) String? errorMessage,
    @Default(0) int step,
    @Default([]) List<Map<String, dynamic>> provinces,
    @Default([]) List<Map<String, dynamic>> cities,
    @Default([]) List<Map<String, dynamic>> districts,
    @Default([]) List<Map<String, dynamic>> filteredList,
    Map<String, dynamic>? selectedProvince,
    Map<String, dynamic>? selectedCity,
  }) = _LocationPickerState;
}
