import 'package:flutter_quran/domain/entities/quran/surah_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_dto.freezed.dart';
part 'surah_dto.g.dart';

@freezed
class SurahDto with _$SurahDto {
  const SurahDto._();

  const factory SurahDto({
    required int number,
    required int numberOfVerses,
    required SurahNameDto name,
    required SurahRevelationDto revelation,
  }) = _SurahDto;

  factory SurahDto.fromJson(Map<String, dynamic> json) =>
      _$SurahDtoFromJson(json);

  SurahEntity toEntity() {
    return SurahEntity(
      number: number,
      name: name.short,
      englishName: name.transliteration.id,
      nameTranslation: name.translation.id,
      numberOfAyahs: numberOfVerses,
      revelationType: revelation.id,
    );
  }
}

@freezed
class SurahNameDto with _$SurahNameDto {
  const factory SurahNameDto({
    required String short,
    required String long,
    required SurahTranslationDto transliteration,
    required SurahTranslationDto translation,
  }) = _SurahNameDto;

  factory SurahNameDto.fromJson(Map<String, dynamic> json) =>
      _$SurahNameDtoFromJson(json);
}

@freezed
class SurahRevelationDto with _$SurahRevelationDto {
  const factory SurahRevelationDto({
    required String arab,
    required String en,
    required String id,
  }) = _SurahRevelationDto;

  factory SurahRevelationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahRevelationDtoFromJson(json);
}

@freezed
class SurahTranslationDto with _$SurahTranslationDto {
  const factory SurahTranslationDto({
    required String en,
    required String id,
  }) = _SurahTranslationDto;

  factory SurahTranslationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahTranslationDtoFromJson(json);
}
