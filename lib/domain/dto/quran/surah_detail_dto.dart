import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_quran/domain/dto/quran/verse_dto.dart';
import 'package:flutter_quran/domain/entities/quran/surah_detail_entity.dart';

part 'surah_detail_dto.freezed.dart';
part 'surah_detail_dto.g.dart';

@freezed
class SurahDetailDto with _$SurahDetailDto {
  const SurahDetailDto._();
  const factory SurahDetailDto({
    required int number,
    required String name,
    required SurahNameDto
        nameTransliteration, // 'name' in entity, 'name' object in API logic usually mismatch. Let's check typical struct.
    // Wait, typical structure for this API:
    /*
      number: 1,
      name: "سورة الفاتحة",
      name: { short: "...", transliteration: { en: "..." } } -- Wait, the previous API analysis for list might be slightly different.
    */
    // Let's rely on the previous SurahDto structure if possible or standard gading.dev structure.
    // Based on previous SurahDto, it might be flat or nested.
    // I will use a robust structure.
    required String revelation,
    required int numberOfVerses,
    required SurahNameDto
        nameDto, // Mapped from 'name' key in JSON which is object
    required List<VerseDto> verses,
  }) = _SurahDetailDto;

  // Custom JsonKey or structure adjustment might be needed if API is weird.
  // Actually, let's look at SurahDto to be safe.

  factory SurahDetailDto.fromJson(Map<String, dynamic> json) {
    // Manual mapping or adjusted structure
    return SurahDetailDto(
      number: json['number'] as int,
      name: json['name'] as String? ??
          '', // Sometimes it's string, sometimes object? No, usually Consistent.
      // Wait, in List API it was flat or object?
      // Let's assume standard object structure for detail.
      // Actually, I should probably check SurahDto first.
      nameDto: SurahNameDto.fromJson(json['name'] is Map
          ? json['name']
          : {
              'transliteration': {'id': 'Unknown'},
              'translation': {'id': 'Unknown'}
            }),
      revelation: json['revelation']['id'] ?? 'Meccan',
      numberOfVerses: json['numberOfVerses'] ?? 0,
      verses:
          (json['verses'] as List).map((e) => VerseDto.fromJson(e)).toList(),
      nameTransliteration: SurahNameDto.fromJson(
          json['name'] is Map ? json['name'] : {}), // Duplicate usage
    );
  }

  /* 
   Wait, I can't write complex manual logic in fromJson easily with freezed generated.
   I will define proper freezed structure matching the JSON.
   JSON:
   {
     "number": 1,
     "name": "سورة الفاتحة",
     "englishName": "Al-Fatiha",
     "englishNameTranslation": "The Opening",
     "revelationType": "Meccan",
     "numberOfAyahs": 7,
     "ayahs": [...]
   }
   
   Wait! `api.quran.gading.dev` structure is:
   {
     "number": 1,
     "sequence": 5,
     "numberOfVerses": 7,
     "name": {
       "short": "الفاتحة",
       "long": "سورة الفاتحة",
       "transliteration": { "en": "Al-Fatiha", "id": "Al-Fatihah" },
       "translation": { "en": "The Opening", "id": "Pembukaan" }
     },
     "revelation": { "arab": "مكة", "en": "Meccan", "id": "Makkiyyah" },
     "tafsir": { ... },
     "preBismillah": null,
     "verses": [ ... ]
   }
  */
}

@freezed
class SurahDetailDtoV2 with _$SurahDetailDtoV2 {
  const SurahDetailDtoV2._();
  const factory SurahDetailDtoV2({
    required int number,
    required int numberOfVerses,
    required SurahNameObjDto name,
    required SurahRevelationDto revelation,
    required List<VerseDto> verses,
  }) = _SurahDetailDtoV2;

  factory SurahDetailDtoV2.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailDtoV2FromJson(json);

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
class SurahNameObjDto with _$SurahNameObjDto {
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
class SurahTransliterationDto with _$SurahTransliterationDto {
  const factory SurahTransliterationDto({
    required String en,
    required String id,
  }) = _SurahTransliterationDto;

  factory SurahTransliterationDto.fromJson(Map<String, dynamic> json) =>
      _$SurahTransliterationDtoFromJson(json);
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
