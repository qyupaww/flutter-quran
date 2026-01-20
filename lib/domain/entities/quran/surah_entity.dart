import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_entity.freezed.dart';

@freezed
class SurahEntity with _$SurahEntity {
  const factory SurahEntity({
    required int number,
    required String name,
    required String englishName,
    required String nameTranslation,
    required int numberOfAyahs,
    required String revelationType,
  }) = _SurahEntity;
}
