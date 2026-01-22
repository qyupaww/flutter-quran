import 'package:dio/dio.dart';

class RegionRepository {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://www.emsifa.com/api-wilayah-indonesia/api';

  Future<List<Map<String, dynamic>>> getProvinces() async {
    try {
      final response = await _dio.get('$_baseUrl/provinces.json');
      return List<Map<String, dynamic>>.from(response.data);
    } catch (e) {
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> getCities(String provinceId) async {
    try {
      final response = await _dio.get('$_baseUrl/regencies/$provinceId.json');
      return List<Map<String, dynamic>>.from(response.data);
    } catch (e) {
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> getDistricts(String cityId) async {
    try {
      final response = await _dio.get('$_baseUrl/districts/$cityId.json');
      return List<Map<String, dynamic>>.from(response.data);
    } catch (e) {
      return [];
    }
  }

  Future<Map<String, double>?> getCoordinates(String address) async {
    try {
      // Using OpenStreetMap Nominatim API
      const url = 'https://nominatim.openstreetmap.org/search';
      final response = await _dio.get(
        url,
        queryParameters: {
          'q': address,
          'format': 'json',
          'limit': 1,
        },
        options: Options(headers: {
          'User-Agent': 'FlutterQuranApp/1.0', // Required by Nominatim policy
        }),
      );

      if (response.data is List && (response.data as List).isNotEmpty) {
        final first = response.data[0];
        return {
          'lat': double.parse(first['lat']),
          'long': double.parse(first['lon']),
        };
      }
      return null;
    } catch (e) {
      return null; // Fail silently, let caller handle
    }
  }
}
