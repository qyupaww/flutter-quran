part of 'quran_bloc.dart';

@freezed
class QuranState with _$QuranState {
  const factory QuranState.initial() = _Initial;
  const factory QuranState.loading() = _Loading;
  const factory QuranState.loaded(List<SurahEntity> surahList) = _Loaded;
  const factory QuranState.error(String message) = _Error;
}
