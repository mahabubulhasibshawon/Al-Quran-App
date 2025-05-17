import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SurahAyatWidget extends StatelessWidget {
  const SurahAyatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 183,
      child: Column(
        spacing: 10,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).focusColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 5,
                children: [
                  Container(
                    height: 27,
                    width: 27,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Center(child: Text('1', style: TextStyle(color: Colors.white),),),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/svg/share_icon.svg')),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/svg/play_icon.svg')),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/svg/save_icon.svg')),
                ],
              ),
            ),
          ),
          Text('الْحَمْدُ لِلَّهِ رَبِّ الْعٰلَمِينَ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text('সমস্ত প্রশংসা আল্লাহর জন্য, যিনি সৃষ্টিকুলের রব।', style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }
}
