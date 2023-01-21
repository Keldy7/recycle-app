import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:projetcours/utils/data_user.dart';
import 'package:projetcours/welcome_screen.dart';

void main() {
  //await UserData.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application',
      // style: GoogleFonts.poppins(
      //     fontSize: 20,
      //     fontWeight: FontWeight.w500,
      //     color: Colors.black)
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff9F8FD),
        primaryColor: const Color(0xff1a7205),
        textTheme:  GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ),
            //Theme.of(context).textTheme.apply(bodyColor: Color(0xff3C4046)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
