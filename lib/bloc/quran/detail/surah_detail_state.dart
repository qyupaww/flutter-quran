part of 'surah_detail_bloc.dart';

@freezed
class SurahDetailState with _$SurahDetailState {
  const factory SurahDetailState.initial() = _Initial;
  const factory SurahDetailState.loading() = _Loading;
  const factory SurahDetailState.loaded(SurahDetailEntity surah) = _Loaded;
  const factory SurahDetailState.error(String message) = _Error;
}
