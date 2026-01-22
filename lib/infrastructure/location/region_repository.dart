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
}
