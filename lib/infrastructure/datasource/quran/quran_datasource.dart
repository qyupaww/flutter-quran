import 'package:flutter_quran/core/models/base_response_list.dart';
import 'package:flutter_quran/core/networks/api_client.dart';
import 'package:flutter_quran/core/networks/error_handler.dart';
import 'package:flutter_quran/domain/dto/quran/surah_dto.dart';

class QuranDatasource {
  final ApiClient _client;

  QuranDatasource(this._client);

  Future<BaseResponseList<SurahDto>> getSurahs() async {
    final response = await _client.get('/surah');
    return BaseResponseList.fromJson(
      response.data,
      ResponseCode.fromCode(response.statusCode ?? 0),
      (data) => data.map((e) => SurahDto.fromJson(e)).toList(),
    );
  }
}
