class QuranRepositoryImpl implements QuranRepository {
  final QuranDatasource _datasource;

  QuranRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<SurahEntity>>> getSurahs() async {
    try {
      final response = await _datasource.getSurahs();
      if (response.responseCode == ResponseCode.success) {
        final entities = response.data.map((e) => e.toEntity()).toList();
        return Right(entities);
      } else {
        return Left(Failure(
            statusCode: response.responseCode, message: response.message));
      }
    } catch (e) {
      return Left(Failure(
          statusCode: ResponseCode.defaultError, message: e.toString()));
    }
  }
}
