import 'package:dartz/dartz.dart';
import 'package:flutter_quran/core/networks/error_handler.dart';
import 'package:flutter_quran/domain/entities/quran/surah_entity.dart';
import 'package:flutter_quran/domain/entities/quran/surah_detail_entity.dart';

abstract class QuranRepository {
  Future<Either<Failure, List<SurahEntity>>> getSurahs();
  Future<Either<Failure, SurahDetailEntity>> getSurahDetail(int number);
}
