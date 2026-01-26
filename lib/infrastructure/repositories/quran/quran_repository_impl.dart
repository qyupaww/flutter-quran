import 'package:dartz/dartz.dart';
import 'package:flutter_quran/core/networks/error_handler.dart';
import 'package:flutter_quran/domain/entities/quran/surah_entity.dart';
import 'package:flutter_quran/domain/repositories/quran/quran_repository.dart';
import 'package:flutter_quran/infrastructure/datasource/quran/quran_datasource.dart';

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

  @override
  Future<Either<Failure, SurahDetailEntity>> getSurahDetail(int number) async {
    try {
      final response = await _datasource.getSurahDetail(number);
      if (response.responseCode == ResponseCode.success) {
        return Right(response.data.toEntity());
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
