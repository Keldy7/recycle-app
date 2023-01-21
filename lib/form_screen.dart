import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/home.dart';

class CreditCardForm extends StatefulWidget {
  const CreditCardForm({super.key});

  @override
  State<CreditCardForm> createState() => _CreditCardFormState();
}

class _CreditCardFormState extends State<CreditCardForm> {
  final TextEditingController _creditCardController = TextEditingController();
  final TextEditingController _dateExpiryController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _postCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Add your credit card",
          style: TextStyle(color: Colors.black, fontSize: 28),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 55,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_outlined,
                  color: Color.fromARGB(255, 78, 19, 31), size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Credit card",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextField(
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                        controller: _creditCardController,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.camera_alt),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                          hintText: "4546 0687 2940 0547",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextField(
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                        controller: _dateExpiryController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                          hintText: "09/24",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextField(
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                        controller: _cvvController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                          hintText: "***",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Country",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextField(
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                        controller: _countryController,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.arrow_drop_down_sharp),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                          hintText: "United States",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PostCode",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextField(
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                        controller: _postCodeController,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.cancel),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color.fromARGB(255, 241, 241, 241),
                          filled: true,
                          hintText: "9",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                ),

            
              
              const SizedBox(height: 5),
              //Checkbox
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          //Navigator.pushNamed(context, '/register');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Home()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff4e131f),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              side: BorderSide(color: Color(0xff4e131f))),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 115, vertical: 18),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        child: const Text(
                          'Complete order',
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
