import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_quran/domain/entities/quran/verse_entity.dart';

part 'verse_dto.freezed.dart';
part 'verse_dto.g.dart';

@freezed
class VerseDto with _$VerseDto {
  const VerseDto._();
  const factory VerseDto({
    required VerseNumberDto number,
    required VerseTextDto text,
    required VerseTranslationDto translation,
  }) = _VerseDto;

  factory VerseDto.fromJson(Map<String, dynamic> json) =>
      _$VerseDtoFromJson(json);

  VerseEntity toEntity() {
    return VerseEntity(
      numberInSurah: number.inSurah,
      textArab: text.arab,
      textTransliteration: text.transliteration.en,
      translationId: translation.id,
    );
  }
}

@freezed
class VerseNumberDto with _$VerseNumberDto {
  const factory VerseNumberDto({
    required int inQuran,
    required int inSurah,
  }) = _VerseNumberDto;

  factory VerseNumberDto.fromJson(Map<String, dynamic> json) =>
      _$VerseNumberDtoFromJson(json);
}

@freezed
class VerseTextDto with _$VerseTextDto {
  const factory VerseTextDto({
    required String arab,
    required VerseTransliterationDto transliteration,
  }) = _VerseTextDto;

  factory VerseTextDto.fromJson(Map<String, dynamic> json) =>
      _$VerseTextDtoFromJson(json);
}

@freezed
class VerseTransliterationDto with _$VerseTransliterationDto {
  const factory VerseTransliterationDto({
    required String en,
  }) = _VerseTransliterationDto;

  factory VerseTransliterationDto.fromJson(Map<String, dynamic> json) =>
      _$VerseTransliterationDtoFromJson(json);
}

@freezed
class VerseTranslationDto with _$VerseTranslationDto {
  const factory VerseTranslationDto({
    required String id,
  }) = _VerseTranslationDto;

  factory VerseTranslationDto.fromJson(Map<String, dynamic> json) =>
      _$VerseTranslationDtoFromJson(json);
}
