// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ma vue"),
          actions: [
            const Icon(Icons.supervisor_account, color: Colors.black),
            const Icon(Icons.more_vert, color: Colors.black)
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              // UserAccountsDrawerHeader(accountName: Text("Aude Marie"),
              // accountEmail: Text("audmarie@gmail.com"),
              // currentAccountPicture: CircleAvatar(child: Icon(Icons.person, size: 40))
              // ),
              DrawerHeader(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.person, size: 40),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Aude Marie"),
                          const Text("audmarie@gmail.com")
                        ],
                      )
                    ],
                  )),
              const ListTile(
                leading: Icon(Icons.person, color: Color(0xFFFBC02D)),
                title: Text("Mon profil"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const ListTile(
                leading: Icon(Icons.home, color: Color(0xFFFBC02D)),
                title: Text("Accueil"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const ListTile(
                leading: Icon(Icons.settings, color: Color(0xFFFBC02D)),
                title: Text("Réglages"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const ListTile(
                leading: Icon(Icons.security, color: Color(0xFFFBC02D)),
                title: Text("Confidentialités"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              const ListTile(
                leading: Icon(Icons.login, color: Color(0xFFFBC02D)),
                title: Text("Déconnexion"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Clicked bouton");
          },
          child: const Icon(Icons.add),
        ),
        //Input field name
        //body: SingleChildScrollView(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ListView(
            padding: const EdgeInsets.only(left: 15, right: 15),
            children: [
              const Text(
                "Welcome to Saifity",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Text(
                "Keep  your data safe",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 50),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Entrez votre email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Entrez votre mot de passe",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  print("Clicked bouton");
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
                child: const Text("Login"),
              ),
            ],
          ),
        )
      );
  }
}
