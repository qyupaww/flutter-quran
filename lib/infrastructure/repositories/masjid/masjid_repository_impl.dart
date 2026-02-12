import 'package:dio/dio.dart';
import 'package:flutter_quran/domain/models/masjid/masjid.dart';
import 'package:flutter_quran/domain/repositories/masjid/masjid_repository.dart';

class MasjidRepositoryImpl implements MasjidRepository {
  final Dio _dio;

  MasjidRepositoryImpl(this._dio);

  @override
  Future<List<Masjid>> getNearbyMasjids(double lat, double lon,
      {int radius = 1000}) async {
    try {
      const String overpassUrl = 'https://overpass-api.de/api/interpreter';
      final String query =
          '[out:json];(node["amenity"="place_of_worship"]["religion"="muslim"](around:$radius,$lat,$lon);way["amenity"="place_of_worship"]["religion"="muslim"](around:$radius,$lat,$lon);relation["amenity"="place_of_worship"]["religion"="muslim"](around:$radius,$lat,$lon););out center;';

      final response = await _dio.get(
        overpassUrl,
        queryParameters: {'data': query},
        options: Options(
          headers: {'User-Agent': 'FlutterQuranApp/1.0', 'Accept': '*/*'},
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data != null && data['elements'] != null) {
          final List<dynamic> elements = data['elements'];
          return elements.map((e) => Masjid.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      // Handle error accordingly, maybe log it
      // print('Error fetching masjids: $e');
      return [];
    }
  }
}
