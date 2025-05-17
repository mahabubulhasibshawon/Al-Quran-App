import 'dart:convert';

import 'package:al_quran_app/cubit/surah_cubit.dart';
import 'package:al_quran_app/models/surah_list_model.dart';
import 'package:al_quran_app/widgets/quran_tabs_widget/quran_tabs.dart';
import 'package:al_quran_app/widgets/surah_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurahCubit()..fetchSurahs(),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                print('tapped');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SvgPicture.asset(
                  'assets/svg/menu_icon.svg',
                  color: Theme.of(context).shadowColor,
                ),
              ),
            ),
            leadingWidth: 30,
            title: Text(
              'Quran App',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Theme.of(context).shadowColor),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // spacing: 10,
              children: [
                Text(
                  'Assalamualaikum',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).shadowColor,
                  ),
                ),
                Text(
                  'Mahabub Ul Hasib Shawon',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('assets/banner.png')],
                ),
                Expanded(child: QuranTabs()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
