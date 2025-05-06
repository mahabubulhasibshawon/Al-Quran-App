import 'dart:convert';

import 'package:al_quran_app/models/surah_list_model.dart';
import 'package:al_quran_app/widgets/surah_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Future<List<SurahList>> fetchSurah() async {
  //   final url =  Uri.parse('http://api.alquran.cloud/v1/surah');
  //   final response =
  //   await http.get(url);
  //   if (response.statusCode == 200) {
  //     var getSurahData = json.decode(response.body) as List;
  //     var listSurah = getSurahData.map(i) => SurahList.fromJson(i)).toList();
  //     return listSurah;
  //   } else {
  //     throw Exception('Failed to load users');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quran App', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Theme.of(context).shadowColor,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // spacing: 10,
          children: [
            Text('Assalamualaikum', style: TextStyle(fontSize: 18, color: Theme.of(context).shadowColor),),
            Text('Mahabub Ul Hasib Shawon', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/banner.png'),
              ],
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => SurahTileWidget(index: index,)),
            )
          ],
        ),
      ),
    );
  }
}
