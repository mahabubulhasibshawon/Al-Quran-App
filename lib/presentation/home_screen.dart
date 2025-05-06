import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  itemBuilder: (context, index) => ListTile(
                                  title: Text('Al-Fatiha'),
                                )),
            )
          ],
        ),
      ),
    );
  }
}
