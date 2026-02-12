import 'package:flutter_quran/domain/models/masjid/masjid.dart';

abstract class MasjidRepository {
  Future<List<Masjid>> getNearbyMasjids(double lat, double lon,
      {int radius = 1000}); // radius in meters
}
