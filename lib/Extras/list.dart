import 'package:flutter/material.dart';
import 'package:projetcours/Extras/produit.dart';



class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: <Widget>[
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
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        (Color.fromARGB(255, 238, 236, 243)),
                        Color.fromARGB(255, 17, 8, 142)
                      ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color.fromARGB(255, 243, 244, 246)),
                      ],
                    ),
                    child: const Text(
                      "GetStarted",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
 
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }
}