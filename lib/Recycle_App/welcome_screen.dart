import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/register_screen.dart';
import 'package:projetcours/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: const EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/welcome_screen.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            //title App in row
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(
                    'Pay',
                    // style: new GoogleFonts(
                    //   color: Color(0x0FF1A7205),
                    //   fontSize: 30,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    style: GoogleFonts.poppins(
                      color: const Color(0xff1a7205),
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.recycling,
                    color: Color(0xfff96202),
                    size: 50,
                  ),
                  Text(
                    'ycle',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff1a7205),
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //Image logo
              const Image(
                image: AssetImage('assets/logoApp.png'),
                height: 200,
                width: 200,
              ),
               Text(
                'Welcome!',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'An online platform that pays you for using plastics, get started by logging into your account.',
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 167, 167, 172),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              //button in row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //button login
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, '/login');
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignInScreen()));
                    
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            side: BorderSide(color: Color(0xff1a7205))
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xff1a7205),
                          fontSize: 20,
                          //change color border
                        ),
                      ),
                    ),
                  ),
                  //button register
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, '/register');
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignUpScreen()));
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1a7205),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            side: BorderSide(color: Color(0xff1a7205))
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),                         
                ],
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Want to learn more ? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 172),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Proceed here .',
                    style: TextStyle(
                      color: Color(0xff1a7205),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline                      
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
//   ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/login');
//                 },
//                 child: const Text('Login'),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/register');
//                 },
//                 child: const Text('Register'),
//               ),

