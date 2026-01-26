part of 'surah_detail_bloc.dart';

@freezed
class SurahDetailEvent with _$SurahDetailEvent {
  const factory SurahDetailEvent.fetchSurahDetail(int number) =
      _FetchSurahDetail;
}
