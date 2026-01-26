part of 'surah_detail_bloc.dart';

@freezed
abstract class SurahDetailEvent with _$SurahDetailEvent {
  const factory SurahDetailEvent.fetchSurahDetail(int number) =
      _FetchSurahDetail;
}
