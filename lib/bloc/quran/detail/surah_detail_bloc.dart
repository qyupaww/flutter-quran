import 'package:bloc/bloc.dart';
import 'package:flutter_quran/domain/entities/quran/surah_detail_entity.dart';
import 'package:flutter_quran/domain/repositories/quran/quran_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_detail_event.dart';
part 'surah_detail_state.dart';
part 'surah_detail_bloc.freezed.dart';

class SurahDetailBloc extends Bloc<SurahDetailEvent, SurahDetailState> {
  final QuranRepository _repository;

  SurahDetailBloc(this._repository) : super(const _Initial()) {
    on<_FetchSurahDetail>((event, emit) async {
      emit(const _Loading());
      final result = await _repository.getSurahDetail(event.number);
      result.fold(
        (failure) => emit(_Error(failure.message)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
