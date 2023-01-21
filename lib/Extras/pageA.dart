import 'package:flutter/material.dart';
import 'produit.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({Key? key}) : super(key: key);

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 167, 183),
      body: ListView(children: [
      
        Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 200,
                  child: Image.asset("assets/logoApp.png"),
                ),
                const SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProduitScreen(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            (Color.fromARGB(255, 238, 236, 243)),
                            Color.fromARGB(255, 5, 139, 216)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      
                    ),
                    child: const Text(
                      "Continuer",
                      style: TextStyle(
                          color: Color.fromRGBO(244, 234, 234, 0.941),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}