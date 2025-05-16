import 'package:al_quran_app/models/surah_list_model.dart';
import 'package:al_quran_app/services/api_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit() : super(SurahInitial());

  void fetchSurahs() async {
    try {
      emit(SurahLoading());
      final surahs = await ApiService.fetchSurahs();
      emit(SurahLoaded(surahs));
    } catch(e) {
      emit(SurahError(e.toString()));
    }
  }
}
