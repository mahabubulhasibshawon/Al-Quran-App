import 'dart:convert';

import 'package:al_quran_app/models/surah_details_model.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'surah_details_state.dart';

class SurahDetailsCubit extends Cubit<SurahDetailsState> {
  SurahDetailsCubit() : super(SurahDetailsInitial());

  Future<void> fetchSurahDetails(int surahNo) async {
    emit(SurahDetailsLoading());
    
    final url = Uri.parse('https://quranapi.pages.dev/api/$surahNo.json');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final surah = SurahDetailsModel.fromJson(data);
        emit(SurahDetailsLoaded(surah));
      } else {
        emit(SurahDetailsError("Failed to load data: ${response.statusCode}"));
      }
    } catch (e) {
      emit(SurahDetailsError(e.toString()));
    }
  }
}
