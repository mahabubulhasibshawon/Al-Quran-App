import 'package:al_quran_app/cubit/surah_details_cubit.dart';
import 'package:al_quran_app/widgets/surah_ayat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  final int surahNo;
  final String? surahName;
  final String? revelationType;
  final String? numberOfAyahs;

  const DetailScreen({
    super.key,
    this.surahName,
    this.revelationType,
    this.numberOfAyahs,
    required this.surahNo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurahDetailsCubit()..fetchSurahDetails(surahNo),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SvgPicture.asset('assets/svg/back_icon.svg'),
            ),
          ),
          title: Text(
            surahName ?? '',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: BlocBuilder<SurahDetailsCubit, SurahDetailsState>(
          builder: (context, state) {
            if (state is SurahDetailsLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is SurahDetailsLoaded) {
              final surah = state.surah;
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 327,
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
                          child: Center(
                            child: Column(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  surahName ?? 'Surah',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  surah.surahNameTranslation ?? '',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 100.0,
                                  ),
                                  child: Divider(color: Colors.white),
                                ),
                                Text(
                                  '${revelationType} - ${numberOfAyahs} Verses',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SvgPicture.asset(
                                  'assets/svg/bismillah_arabic.svg',
                                ),
                              ],
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
                    SizedBox(height: 40),
                    Expanded(
                      child: ListView.builder(
                        itemCount: surah.totalAyah,
                        itemBuilder:
                            (context, index) => SurahAyatWidget(
                              index: index+1,
                              arabicAyat: surah.arabic1![index],
                              banglaAyat: surah.bengali![index],
                            ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
