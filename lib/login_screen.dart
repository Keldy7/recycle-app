//Login screen
import 'package:flutter/material.dart';
import 'package:projetcours/home.dart';
import 'package:projetcours/widgets/input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  
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
                          children: [
                            IconButton(
                              // style: TextDecoration(                                
                              // ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios, color: Color(0xff1a7205),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25, right: 0),
                              child: Text("Pay",
                                style: TextStyle(
                                  color: Color(0xff1a7205),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.recycling,
                                color: Color(0xfff96202),
                                size: 50,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 0, right: 15),
                              child: Text("ycle",
                                  style: TextStyle(
                                    color: Color(0xff1a7205),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                            ),
                      ],
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Fill in the required to complete your registration.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 167, 172),
                    fontSize: 18,
                  )
                ),
              ),
              Input(
                labelTexte: "Your Name",
                myController: _nameController,
                placeholderTexte: "e.g Abu Chuckwu Dele",
                password: false, 
                onChanged: (name) {  },
              ),
              Input(
                labelTexte: "Email Address",
                myController: _emailController,
                placeholderTexte: "e.g Abu Chuckwu Dele",
                password: false, 
                onChanged: (email) {  },
              ),
              Input(
                labelTexte: "Password",
                myController: _passwordController,
                placeholderTexte: "e.g Abu Chuckwu Dele",
                password: false, 
                onChanged: (passwd) {  },
              ),
              Input(
                labelTexte: "Confirm Password",
                myController: _confpasswordController,
                placeholderTexte: "e.g Abu Chuckwu Dele",
                password: false, 
                onChanged: (confpasswd) {  },
              ),
              const SizedBox(height: 5),
              //Checkbox
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children:  [
                    Row(
                      children: const [
                        Icon(
                      Icons.check_box_outline_blank,
                      color: Color.fromARGB(255, 97, 98, 97),
                      size: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Sign-Up as an Agent",
                        style: TextStyle(
                          color: Color.fromARGB(255, 167, 167, 172),
                          fontSize: 14,
                        )
                      ),
                    ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                      Icons.check_box_outlined,
                      color: Color.fromARGB(255, 97, 98, 97),
                      size: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Sign-Up as a User",
                        style: TextStyle(
                          color: Color.fromARGB(255, 167, 167, 172),
                          fontSize: 14,
                        )
                      ),
                    ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                      Icons.check_box_outlined,
                      color: Color.fromARGB(255, 97, 98, 97),
                      size: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("I'm agree with the Terms and Conditions",
                        style: TextStyle(
                          color: Color.fromARGB(255, 167, 167, 172),
                          fontSize: 14,
                        )
                      ),
                    ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, '/register');
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Home()));
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
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),                         
                
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
