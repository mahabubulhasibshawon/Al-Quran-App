import 'package:al_quran_app/presentation/detail_screen.dart';
import 'package:al_quran_app/presentation/splash_screen.dart';
import 'package:al_quran_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}

// class GetStartedScreen extends StatelessWidget {
//   const GetStartedScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF0B0F1F), // Dark background
//       body: Center(
//         child: Stack(
//           clipBehavior: Clip.none,
//           alignment: Alignment.center,
//           children: [
//             // Card background
//             Container(
//               width: 300,
//               height: 440,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF7B3CF0), // Purple background
//                 borderRadius: BorderRadius.circular(24),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Image.asset(
//                   'assets/splash_img.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//
//             // Button overlapping bottom edge
//             Positioned(
//               bottom: -15, // Half outside
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Button action
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFFFC4A3), // Peach color
//                   foregroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//                 ),
//                 child: const Text(
//                   'Get Started',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
