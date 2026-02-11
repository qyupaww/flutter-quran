import 'package:flutter_quran/domain/cubit/safe_cubit.dart';
import 'package:flutter_quran/infrastructure/location/region_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';

part 'location_picker_state.dart';
part 'location_picker_cubit.freezed.dart';

class LocationPickerCubit extends SafeCubit<LocationPickerState> {
  final RegionRepository _repository;

  LocationPickerCubit(this._repository) : super(const LocationPickerState()) {
    _loadProvinces();
  }

  void _loadProvinces() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final data = await _repository.getProvinces();
      emit(state.copyWith(
        isLoading: false,
        provinces: data,
        filteredList: data,
        step: 0,
      ));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, errorMessage: "Gagal memuat provinsi: $e"));
    }
  }

  void loadCities(String provId, Map<String, dynamic> province) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      selectedProvince: province,
    ));
    try {
      final data = await _repository.getCities(provId);
      emit(state.copyWith(
        isLoading: false,
        cities: data,
        filteredList: data,
        step: 1,
      ));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, errorMessage: "Gagal memuat kota: $e"));
    }
  }

  void loadDistricts(String cityId, Map<String, dynamic> city) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      selectedCity: city,
    ));
    try {
      final data = await _repository.getDistricts(cityId);
      emit(state.copyWith(
        isLoading: false,
        districts: data,
        filteredList: data,
        step: 2,
      ));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, errorMessage: "Gagal memuat kecamatan: $e"));
    }
  }

  void search(String query) {
    if (query.isEmpty) {
      final sourceList = state.step == 0
          ? state.provinces
          : state.step == 1
              ? state.cities
              : state.districts;
      emit(state.copyWith(filteredList: sourceList));
      return;
    }

    final sourceList = state.step == 0
        ? state.provinces
        : state.step == 1
            ? state.cities
            : state.districts;

    final filtered = sourceList
        .where((item) =>
            item['name'].toString().toLowerCase().contains(query.toLowerCase()))
        .toList();

    emit(state.copyWith(filteredList: filtered));
  }

  void backStep() {
    if (state.step == 1) {
      emit(state.copyWith(
        step: 0,
        filteredList: state.provinces,
        selectedCity: null,
      ));
    } else if (state.step == 2) {
      emit(state.copyWith(
        step: 1,
        filteredList: state.cities,
      ));
    }
  }

  Future<Location?> getLocationFromAddress(
      Map<String, dynamic> district) async {
    final address =
        "${district['name']}, ${state.selectedCity?['name']}, Indonesia";

    try {
      // Attempt 1: Platform Geocoding
      try {
        List<Location> locations = await locationFromAddress(address);
        if (locations.isNotEmpty) {
          return locations.first;
        }
      } catch (_) {}

      final coords = await _repository.getCoordinates(address);
      if (coords != null) {
        return Location(
          latitude: coords['lat']!,
          longitude: coords['long']!,
          timestamp: DateTime.now(),
        );
      }
      return null;
    } catch (e) {
      emit(state.copyWith(errorMessage: "Gagal mendapatkan lokasi: $e"));
      return null;
    }
  }

  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }
}
