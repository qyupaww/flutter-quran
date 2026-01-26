import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse_entity.freezed.dart';

@freezed
abstract class VerseEntity with _$VerseEntity {
  const factory VerseEntity({
    required int numberInSurah,
    required String textArab,
    required String textTransliteration,
    required String translationId,
  }) = _VerseEntity;
}
