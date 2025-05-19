import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SurahTileWidget extends StatelessWidget {
  final int index;
  final int surahNumber;
  final String surahName;
  final String surahType;
  final String surahArabicName;
  final String surahDetails;
  final int ayatNumber;

  const SurahTileWidget({
    super.key,
    required this.index,
    required this.surahNumber,
    required this.surahName,
    required this.surahType,
    required this.surahArabicName,
    required this.surahDetails,
    required this.ayatNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/surah_number.svg',
                height: 36,
                width: 36,
              ),
              Text(
                "$surahNumber",
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  surahName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  "$surahType • $ayatNumber Ayat",
                  style: TextStyle(fontSize: 12, color: Theme.of(context).hintColor),
                ),
              ],
            ),
          ),
          Text(
            surahArabicName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
