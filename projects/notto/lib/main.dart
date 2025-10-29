import 'package:flutter/material.dart';
import 'package:notto/core/constants/notto_colours.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:notto/screens/home/home_screen.dart';

void main() {
  // Ensure the Flutter binding is initialized so platform plugins
  // (like path_provider used by google_fonts) are registered before
  // any plugin calls occur.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: NottoColors.accent),
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
