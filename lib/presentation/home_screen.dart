import 'package:al_quran_app/cubit/surah_cubit.dart';
import 'package:al_quran_app/cubit/time_cubit.dart';
import 'package:al_quran_app/widgets/quran_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

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
              onTap: () {},
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [Image.asset('assets/banner.png')],
                // ),
                Stack(
                  children: [
                    Container(
                      height: 160,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColor,
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xffDF98FA),
                            // Color(0xffB978FC),
                            Color(0xff9055FF),
                          ],
                        ),
                      ),
                      child: BlocProvider(
                        create: (context) => TimeCubit(),
                        child: Center(
                          child: Column(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocBuilder<TimeCubit, DateTime>(
                                builder: (context, dateTime) {
                                  return Text(
                                    DateFormat('hh:mm:ss').format(dateTime),
                                    style: TextStyle(
                                      fontSize: 42,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/quran.png',
                        opacity: AlwaysStoppedAnimation(.4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(child: QuranTabs()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
