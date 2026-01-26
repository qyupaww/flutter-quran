import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_quran/domain/dto/quran/verse_dto.dart';
import 'package:flutter_quran/domain/entities/quran/surah_detail_entity.dart';

part 'surah_detail_dto.freezed.dart';
part 'surah_detail_dto.g.dart';

@freezed
abstract class SurahDetailDto with _$SurahDetailDto {
  const SurahDetailDto._();
  const factory SurahDetailDto({
    required int number,
    required int numberOfVerses,
    required SurahNameObjDto name,
    required SurahRevelationDto revelation,
    required List<VerseDto> verses,
  }) = _SurahDetailDto;

  factory SurahDetailDto.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailDtoFromJson(json);

  SurahDetailEntity toEntity() {
    return SurahDetailEntity(
      number: number,
      name: name.short, // Arabic
      englishName:
          name.transliteration.id, // Indonesian transliteration preferred
      nameTranslation: name.translation.id, // Indonesian translation
      revelationType: revelation.id, // Makkiyah/Madaniyah from API directly
      numberOfAyahs: numberOfVerses,
      verses: verses.map((v) => v.toEntity()).toList(),
    );
  }
}

@freezed
abstract class SurahNameObjDto with _$SurahNameObjDto {
  const factory SurahNameObjDto({
    required String short,
    required String long,
    required SurahTransliterationDto transliteration,
    required SurahTranslationDto translation,
  }) = _SurahNameObjDto;

  factory SurahNameObjDto.fromJson(Map<String, dynamic> json) =>
      _$SurahNameObjDtoFromJson(json);
}

@freezed
abstract class SurahTransliterationDto with _$SurahTransliterationDto {
  const factory SurahTransliterationDto({
    required String en,
    required String id,
  }) = _SurahTransliterationDto;

  factory SurahTransliterationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahTransliterationDtoFromJson(json);
}

@freezed
abstract class SurahTranslationDto with _$SurahTranslationDto {
  const factory SurahTranslationDto({
    required String en,
    required String id,
  }) = _SurahTranslationDto;

  factory SurahTranslationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahTranslationDtoFromJson(json);
}

@freezed
abstract class SurahRevelationDto with _$SurahRevelationDto {
  const factory SurahRevelationDto({
    required String arab,
    required String en,
    required String id,
  }) = _SurahRevelationDto;

  factory SurahRevelationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahRevelationDtoFromJson(json);
}
