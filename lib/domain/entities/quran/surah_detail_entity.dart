import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_quran/domain/entities/quran/verse_entity.dart';

part 'surah_detail_entity.freezed.dart';

@freezed
abstract class SurahDetailEntity with _$SurahDetailEntity {
  const factory SurahDetailEntity({
    required int number,
    required String name,
    required String englishName,
    required String nameTranslation,
    required String revelationType,
    required int numberOfAyahs,
    required List<VerseEntity> verses,
  }) = _SurahDetailEntity;
}
