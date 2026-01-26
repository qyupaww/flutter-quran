// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerseDto _$VerseDtoFromJson(Map<String, dynamic> json) => _VerseDto(
      number: VerseNumberDto.fromJson(json['number'] as Map<String, dynamic>),
      text: VerseTextDto.fromJson(json['text'] as Map<String, dynamic>),
      translation: VerseTranslationDto.fromJson(
          json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseDtoToJson(_VerseDto instance) => <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'translation': instance.translation,
    };

_VerseNumberDto _$VerseNumberDtoFromJson(Map<String, dynamic> json) =>
    _VerseNumberDto(
      inQuran: (json['inQuran'] as num).toInt(),
      inSurah: (json['inSurah'] as num).toInt(),
    );

Map<String, dynamic> _$VerseNumberDtoToJson(_VerseNumberDto instance) =>
    <String, dynamic>{
      'inQuran': instance.inQuran,
      'inSurah': instance.inSurah,
    };

_VerseTextDto _$VerseTextDtoFromJson(Map<String, dynamic> json) =>
    _VerseTextDto(
      arab: json['arab'] as String,
      transliteration: VerseTransliterationDto.fromJson(
          json['transliteration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseTextDtoToJson(_VerseTextDto instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'transliteration': instance.transliteration,
    };

_VerseTransliterationDto _$VerseTransliterationDtoFromJson(
        Map<String, dynamic> json) =>
    _VerseTransliterationDto(
      en: json['en'] as String,
    );

Map<String, dynamic> _$VerseTransliterationDtoToJson(
        _VerseTransliterationDto instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

_VerseTranslationDto _$VerseTranslationDtoFromJson(Map<String, dynamic> json) =>
    _VerseTranslationDto(
      id: json['id'] as String,
    );

Map<String, dynamic> _$VerseTranslationDtoToJson(
        _VerseTranslationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
