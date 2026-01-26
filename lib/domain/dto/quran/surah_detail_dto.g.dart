// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahDetailDto _$SurahDetailDtoFromJson(Map<String, dynamic> json) =>
    _SurahDetailDto(
      number: (json['number'] as num).toInt(),
      numberOfVerses: (json['numberOfVerses'] as num).toInt(),
      name: SurahNameObjDto.fromJson(json['name'] as Map<String, dynamic>),
      revelation: SurahRevelationDto.fromJson(
          json['revelation'] as Map<String, dynamic>),
      verses: (json['verses'] as List<dynamic>)
          .map((e) => VerseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SurahDetailDtoToJson(_SurahDetailDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name,
      'revelation': instance.revelation,
      'verses': instance.verses,
    };

_SurahNameObjDto _$SurahNameObjDtoFromJson(Map<String, dynamic> json) =>
    _SurahNameObjDto(
      short: json['short'] as String,
      long: json['long'] as String,
      transliteration: SurahTransliterationDto.fromJson(
          json['transliteration'] as Map<String, dynamic>),
      translation: SurahTranslationDto.fromJson(
          json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SurahNameObjDtoToJson(_SurahNameObjDto instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
    };

_SurahTransliterationDto _$SurahTransliterationDtoFromJson(
        Map<String, dynamic> json) =>
    _SurahTransliterationDto(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$SurahTransliterationDtoToJson(
        _SurahTransliterationDto instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_SurahTranslationDto _$SurahTranslationDtoFromJson(Map<String, dynamic> json) =>
    _SurahTranslationDto(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$SurahTranslationDtoToJson(
        _SurahTranslationDto instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_SurahRevelationDto _$SurahRevelationDtoFromJson(Map<String, dynamic> json) =>
    _SurahRevelationDto(
      arab: json['arab'] as String,
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$SurahRevelationDtoToJson(_SurahRevelationDto instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'en': instance.en,
      'id': instance.id,
    };
