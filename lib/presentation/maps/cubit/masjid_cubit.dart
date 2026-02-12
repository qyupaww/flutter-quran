import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_quran/domain/repositories/masjid/masjid_repository.dart';
import 'masjid_state.dart';

class MasjidCubit extends Cubit<MasjidState> {
  final MasjidRepository _repository;

  MasjidCubit(this._repository) : super(MasjidInitial());

  Future<void> loadNearbyMasjids() async {
    emit(MasjidLoading());
    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(const MasjidError('Location services are disabled.'));
        return;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(const MasjidError('Location permissions are denied'));
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(const MasjidError(
            'Location permissions are permanently denied, we cannot request permissions.'));
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      final masjids = await _repository.getNearbyMasjids(
          position.latitude, position.longitude);

      emit(MasjidLoaded(masjids, position.latitude, position.longitude));
    } catch (e) {
      emit(MasjidError('Failed to load masjids: ${e.toString()}'));
    }
  }
}
