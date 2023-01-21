//Login screen
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/home.dart';
// import 'package:projetcours/utils/data_user.dart';
import 'package:projetcours/widgets/input.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String name = '';
  //String email = '';
  String passwd = '';
  // String confpasswd = '';

  @override
  void initState() {

    super.initState();
    //name = UserData.getName() ?? '';
    //email = UserData.getEmail() ?? '';
    //passwd = UserData.getPasswd() ?? '';
    // confpasswd = UserData.getConfPasswd() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 25, right: 0),
                              child: Text("Pay",
                              style: TextStyle(
                                color: Color(0xff1a7205),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            Icons.recycling,
                            color: Color(0xfff96202),
                            size: 50,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0, right: 15),
                          child: Text("ycle",
                              style: TextStyle(
                                color: Color(0xff1a7205),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Sign In",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  )
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Welcome back to",
                      style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 172),
                        fontSize: 18,
                      )
                    ),
                  ),
                  Text(" PayCycle",
                    style: TextStyle(
                      color: Color(0xff1a7205),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text("Home of substantable living, saving the world, helping lives.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 167, 172),
                    fontSize: 18,
                  )
                ),
              ),
              const SizedBox(height: 12),
              Input(
                labelTexte: "Email Address",
                myController: _emailController,
                placeholderTexte: "e.g Abu Chuckwu Dele",
                password: false,
                onChanged: (name) => setState(() => this.name = name),
              ),
              Input(
                labelTexte: "Password",
                myController: _passwordController,
                placeholderTexte: "e.g Abu Chuckwu Dele",
                password: false, 
                onChanged: (passwd) => setState(() => this.passwd = name),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children:  [
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff1a7205),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline                      
                    ),
                  ),
                ],
              ),
                    
                    const SizedBox(height: 20),
                    Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pop(context);                           
                        // await UserData.setName(name);
                        // await UserData.setName(passwd);
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (_) => const Home()));
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1a7205),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            side: BorderSide(color: Color(0xff1a7205))
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 115, vertical: 18),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      //Rose pale: 0xffffcdd2
                        //Marron foncé: Color.fromARGB(255, 78, 19, 31)
                        
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 172),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Sign-Up',
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
                ),
              ),
            ],
            
          ),
        ),
      )),
    );
  }
}
