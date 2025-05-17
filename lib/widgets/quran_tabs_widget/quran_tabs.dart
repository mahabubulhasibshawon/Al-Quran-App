import 'package:al_quran_app/cubit/surah_cubit.dart';
import 'package:al_quran_app/models/surah_list_model.dart';
import 'package:al_quran_app/services/api_service.dart';
import 'package:al_quran_app/widgets/surah_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranTabs extends StatelessWidget {
  const QuranTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => SurahCubit()..fetchSurahs(),
    child: DefaultTabController(length: 4, child: Column(
      children: [
        TabBar(tabs: const [
          Tab(text: "Surah"),
          Tab(text: "Para"),
          Tab(text: "Page"),
          Tab(text: "Hijb"),
        ],),
        Expanded(child: TabBarView(children: [
          SurahTab(),
          Center(child: Text("Para")),
          Center(child: Text("Page")),
          Center(child: Text("Hijb")),
        ]
        ))
      ],
    )),
    );
  }
}
