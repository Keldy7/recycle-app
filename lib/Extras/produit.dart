import 'package:flutter/material.dart';


class ProduitScreen extends StatefulWidget {
  const ProduitScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<ProduitScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)),
            color: Color.fromARGB(255, 10, 181, 200),
            gradient: LinearGradient(
              colors: [
                (Color.fromARGB(255, 61, 101, 233)),
                Color.fromARGB(255, 8, 128, 126)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Bienvenue sur eboutique!",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: Column(
            children: const [
              TextField(
                decoration: InputDecoration(
                  hintText: "ProductName",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: const TextField(
            cursorColor: Color(0xffF5591F),
            decoration: InputDecoration(
              hintText: "Quantité disponible",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: const TextField(
            cursorColor: Color(0xffF5591F),
            decoration: InputDecoration(
              hintText: "prix unitaire",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Write Click Listener Code Here.
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                (Color.fromARGB(255, 3, 19, 102)),
                Color.fromARGB(255, 104, 100, 214)
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const Text(
              "Enregistrez",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    )));
  }
}
