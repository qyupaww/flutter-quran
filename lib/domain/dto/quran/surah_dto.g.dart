// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahDto _$SurahDtoFromJson(Map<String, dynamic> json) => _SurahDto(
      number: (json['number'] as num).toInt(),
      numberOfVerses: (json['numberOfVerses'] as num).toInt(),
      name: SurahNameDto.fromJson(json['name'] as Map<String, dynamic>),
      revelation: SurahRevelationDto.fromJson(
          json['revelation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SurahDtoToJson(_SurahDto instance) => <String, dynamic>{
      'number': instance.number,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name,
      'revelation': instance.revelation,
    };

_SurahNameDto _$SurahNameDtoFromJson(Map<String, dynamic> json) =>
    _SurahNameDto(
      short: json['short'] as String,
      long: json['long'] as String,
      transliteration: SurahTranslationDto.fromJson(
          json['transliteration'] as Map<String, dynamic>),
      translation: SurahTranslationDto.fromJson(
          json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SurahNameDtoToJson(_SurahNameDto instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
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
