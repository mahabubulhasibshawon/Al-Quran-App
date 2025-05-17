import 'package:al_quran_app/cubit/surah_cubit.dart';
import 'package:al_quran_app/presentation/detail_screen.dart';
import 'package:al_quran_app/widgets/surah_tile_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahCubit, SurahState>(
      builder: (context, state) {
        if (state is SurahLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is SurahLoaded) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final surah = state.surahs[index];
              return ListTile(
                onTap: () {
                  print(surah.number);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              DetailScreen(surahName: surah.englishName, revelationType: surah.revelationType, numberOfAyahs: surah.numberOfAyahs.toString(),),
                    ),
                  );
                },
                leading: Stack(
                  children: [
                    SvgPicture.asset('assets/svg/surah_number.svg'),
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Center(
                        child: Text(
                          "${surah.number}",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  surah.englishName ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                subtitle: Text(
                  '${surah.revelationType} - ${surah.numberOfAyahs} Verses',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text(
                  surah.name ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xff863ED5),
                  ),
                ),
              );
            },
            separatorBuilder: (_, _) => Divider(),
            itemCount: state.surahs.length,
          );
        } else if (state is SurahError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
