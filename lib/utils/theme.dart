import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color(0xff672CBC),
    shadowColor: Color(0xff8789A3),
    focusColor: Color(0xdfd7d6d6),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Color(0xff672CBC),
      unselectedLabelColor: Color(0xff8789A3),
      indicatorColor: Color(0xff672CBC),
    )
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: Color(0xff040C23),
    primaryColor: Colors.white,
    shadowColor: Color(0xffA19CC5),
      appBarTheme: AppBarTheme(
        color: Color(0xff040C23),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Color(0xff8789A3),
        indicatorColor: Color(0xff672CBC),
      )
  );
}
