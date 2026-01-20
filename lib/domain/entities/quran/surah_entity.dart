import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_entity.freezed.dart';
part 'surah_entity.g.dart';

@freezed
class SurahEntity with _$SurahEntity {
  const factory SurahEntity({
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'englishName') String? englishName,
    @JsonKey(name: 'englishNameTranslation') String? englishNameTranslation,
    @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
    @JsonKey(name: 'revelationType') String? revelationType,
  }) = _SurahEntity;

  factory SurahEntity.fromJson(Map<String, dynamic> json) =>
      _$SurahEntityFromJson(json);
}
