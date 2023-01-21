import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/home.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset("assets/purchaseDone.png", height: 250),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Done!",
                style: GoogleFonts.bodoniModa(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Your order is being processed.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Wait for a call from our manager.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              SizedBox(
                  height: 60,
                  width: 220,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Home()));
                       
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 78, 19, 31),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                        ),
                      ),
                      child: Text(
                        "To Home page",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }
}
