import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/details_screen.dart';
import 'package:projetcours/onboarding_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<IconData> listIcons = [
    Icons.home_outlined,
    Icons.favorite_outline_outlined,
    Icons.settings_outlined,
    Icons.account_circle_outlined,
  ];

  Widget _categories({required String nomCat}) {
    return Container(
      height: 30,
      width: 60,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          nomCat,
          style: GoogleFonts.poppins(
              color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "What Would Like?",
                style: GoogleFonts.bodoniModa(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            )
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              height: size.height * 0.09,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintText: "Search",
                                hintStyle: GoogleFonts.poppins(
                                  color: Colors.grey.shade600,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 242, 242),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Customer`s Choice",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromARGB(255, 78, 19, 31),
                                    ),
                                  ),
                                  Text(
                                    "Ferghettina Rose 'Eronero'",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Text(
                                        "\$30.99",
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(255, 78, 19, 31),
                                        ),
                                      ),
                                      Text(
                                        " /0,2 gal",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 179,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage("assets/wineHome.png")),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  )
                ]),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _categories(nomCat: "Red"),
                            _categories(nomCat: "White"),
                            _categories(nomCat: "Rose"),
                            _categories(nomCat: "Sparkle"),
                            _categories(nomCat: "Fortified"),
                          ],
                        )),
                  ),
                  ],
              ),
            )
          ],
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 78, 19, 31),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: listIcons.length,
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DetailsScreen()));
                    
                      setState(() {
                        selectedIndex = i;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      //height: index == selectedIndex ? 6 : 45,
                      width: 35,
                      decoration: BoxDecoration(
                        //borderRadius: const BorderRadius.all(Radius.circular(500))
                        border: i == selectedIndex
                            ? const Border(
                                bottom:
                                    BorderSide(width: 3.0, color: Colors.white))
                            : null,
                      ),
                      child: Icon(
                        listIcons[i],
                        size: 30,
                        color: Colors.white,
                        // color: i == selectedIndex
                        //     ? Colors.white
                        //     : Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ));
  }
}

// class BottomIcons {
//   final String iconActif, titre, description;
//   BottomIcons({required this.iconActif, required this.titre, required this.description});
// }

// final List<BottomIcons> data = [
//   BottomIcons(
//       iconActif: "assets/slider1.png",
//       titre: "Welcome to the World of the wine",
//       description: "Here you pick up a drink that fits all your criteria"),
//   BottomIcons(
//       iconActif: "assets/slider2.png",
//       titre: "Huge selection of wines for you",
//       description: "Select wines from differents types, ages, countries"),
//   BottomIcons(
//       iconActif: "assets/slider3.png",
//       titre: "Install the wine filter quickly",
//       description: "You can choose your favorite type of wine")
// ];
