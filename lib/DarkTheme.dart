import 'package:flutter/material.dart';


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  primaryColorDark: Colors.black,
  secondaryHeaderColor: Color(0xff212529),
  colorScheme: ColorScheme.dark(),
  floatingActionButtonTheme:FloatingActionButtonThemeData(
      backgroundColor: Colors.black
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
  )
);