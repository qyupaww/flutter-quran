import 'dart:convert';
import 'package:flutter_quran/core/models/base_response_list.dart';
import 'package:flutter_quran/core/networks/api_client.dart';
import 'package:flutter_quran/core/networks/error_handler.dart';
import 'package:flutter_quran/domain/dto/quran/surah_dto.dart';
import 'package:flutter_quran/core/models/base_response.dart';
import 'package:flutter_quran/domain/dto/quran/surah_detail_dto.dart';

class QuranDatasource {
  final ApiClient _client;

  QuranDatasource(this._client);

  Future<BaseResponseList<SurahDto>> getSurahs() async {
    final response = await _client.get('/surah');
    dynamic data = response.data;
    if (data is String) {
      data = jsonDecode(data);
    }
    return BaseResponseList.fromJson(
      data,
      ResponseCode.fromCode(response.statusCode ?? 0),
      (data) => data.map((e) => SurahDto.fromJson(e)).toList(),
    );
  }

  Future<BaseResponse<SurahDetailDtoV2>> getSurahDetail(int number) async {
    final response = await _client.get('/surah/$number');
    dynamic data = response.data;
    if (data is String) {
      data = jsonDecode(data);
    }
    return BaseResponse.fromJson(
      data,
      ResponseCode.fromCode(response.statusCode ?? 0),
      (data) => SurahDetailDtoV2.fromJson(data),
    );
  }
}
