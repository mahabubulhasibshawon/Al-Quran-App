import 'dart:convert';

import 'package:al_quran_app/models/surah_list_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String url = "http://api.alquran.cloud/v1/surah";

  static Future<List<Data>> fetchSurahs() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final surahList = SurahList.fromJson(json.decode(response.body));
      return surahList.data ?? [];
    } else {
      throw Exception("Failed to load surahs");
    }
  }
}
