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
