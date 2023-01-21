import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/home.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                    itemCount: data.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => OnBoardingContent(
                          img: data[index].img,
                          titre: data[index].titre,
                          description: data[index].description,
                        ))),
            Row(
              children: [
                ...List.generate(
                    data.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Indicateurs(
                            estActif: index == _pageIndex,
                          ),
                        )),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 120,
                  child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(microseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 78, 19, 31),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}


//Indicateurs de pages
class Indicateurs extends StatelessWidget {
  const Indicateurs({super.key, this.estActif = false});
  final bool estActif;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300) ,
      height: 5,
      width: estActif ? 90 : 5,
      decoration: BoxDecoration(
        color: estActif ? const Color.fromARGB(255, 78, 19, 31) : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(10))));
  }
}

//Les données du slider d'introduction
class Onboard {
  final String img, titre, description;
  Onboard({required this.img, required this.titre, required this.description});
}

final List<Onboard> data = [
  Onboard(
      img: "assets/slider1.png",
      titre: "Welcome to the World of the wine",
      description: "Here you pick up a drink that fits all your criteria"),
  Onboard(
      img: "assets/slider2.png",
      titre: "Huge selection of wines for you",
      description: "Select wines from differents types, ages, countries"),
  Onboard(
      img: "assets/slider3.png",
      titre: "Install the wine filter quickly",
      description: "You can choose your favorite type of wine")
];

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent(
      {super.key,
      required this.img,
      required this.titre,
      required this.description});

  final String img, titre, description;
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        Container(alignment: Alignment.topRight,
          child: 
          ElevatedButton(
            onPressed: () {
               Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Home()));
                    
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
            child: 
            Text(
              "Skip",
              style: GoogleFonts.poppins(
                  color: Colors.grey.shade500, 
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )
          ),
          
        ),
        const Spacer(),
        Image.asset(img, height: 250),
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 2),
          child: Text(
            titre,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: Text(description,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w700)),
        ),
        const Spacer(),
      ],
    );
  }
}
