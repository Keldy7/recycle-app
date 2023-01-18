import 'package:flutter/material.dart';
// import 'package:projetcours/utils/data_user.dart';
import 'package:projetcours/welcome_screen.dart';

void main() {
  //await UserData.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application',
      // style: GoogleFonts.poppins(
      //     fontSize: 20,
      //     fontWeight: FontWeight.w500,
      //     color: Colors.black)
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff9F8FD),
        primaryColor: Color(0xff1a7205),
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: Color(0xff3C4046)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
