import 'package:bloc/bloc.dart';
import 'package:flutter_quran/core/networks/error_handler.dart';
import 'package:flutter_quran/domain/entities/quran/surah_entity.dart';
import 'package:flutter_quran/domain/repositories/quran/quran_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_event.dart';
part 'quran_state.dart';
part 'quran_bloc.freezed.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  final QuranRepository _repository;

  QuranBloc(this._repository) : super(const _Initial()) {
    on<_FetchSurah>((event, emit) async {
      emit(const _Loading());
      final result = await _repository.getSurahs();
      result.fold(
        (failure) => emit(_Error(failure.message)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
