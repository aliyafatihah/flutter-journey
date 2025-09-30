// ignore_for_file: prefer_const_constructors

import 'package:dunkinapp/pages/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
    );
  }
}
