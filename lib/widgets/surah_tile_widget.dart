import 'package:flutter/material.dart';

class SurahTileWidget extends StatelessWidget {
  final int index;
  const SurahTileWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              Center(child: Text((index+1).toString()),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Al-Fatiha'),
                  Text('MECCAN 7VERSES',style: TextStyle(color: Theme.of(context).shadowColor, fontSize: 12),)
                ],
              ),
              Spacer(),
              Text('الفاتحة', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Theme.of(context).primaryColor),)
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
