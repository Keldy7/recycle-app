import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/details_screen.dart';
import 'package:projetcours/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de vin',
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xff1a7205),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:  GoogleFonts.bodoniModaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
