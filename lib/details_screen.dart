import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/cart_screen.dart';
import 'package:projetcours/form_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(""),
        elevation: 0.0,
        backgroundColor: const Color(0x63dcccd8),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_outline_outlined,
              color: Color.fromARGB(255, 78, 19, 31),
              size: 30
            ),
            onPressed: () {
              print("Ajouter aux favoris avec succès");
            },
          )
        ],
        toolbarHeight: 35,
        leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_outlined,
            color: Color.fromARGB(255, 78, 19, 31),
            size: 30),
            onPressed: () { Navigator.pop(context);},
          );
        },
  ),
      ),
      body: 
      Stack(
        children: <Widget>[       
          Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 130.0, end: 0.0),
                child: Container(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 166.0),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(size: 127.0, start: 0.0),
                      child: Container(
                        color: const Color(0x63dcccd8), //
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 127.0, 0.0, 0.0),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 1.0),
                            Pin(size: 240.0, end: 0.0),
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 284.0, start: 0.0),
                            child: Container(
                              color: const Color(0x63dcccd8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Pinned.fromPins(
            Pin(start: 0.5, end: -0.5),
            Pin(size: 2.0, end: 156.5),
            child: SvgPicture.string(
              _svg_hbfav6,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 265.0, end: -62.0),
            Pin(size: 292.3, start: 79.0),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: const Alignment(-1.0, 0.46),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: const BoxDecoration(
                      color: Color(0xffecdce6),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19.0, 0.0, 0.0, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 129.0,
                          height: 139.0,
                          child: SvgPicture.string(
                            _svg_fzr2kl,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(-0.246, 0.276),
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: SvgPicture.string(
                            _svg_lsy0bm,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.366, 1.0),
                        child: SizedBox(
                          width: 20.0,
                          height: 20.0,
                          child: SvgPicture.string(
                            _svg_tvxd5,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 107.6, start: 13.2),
                        Pin(size: 169.5, end: 55.0),
                        child: BlendMask(
                          blendMode: BlendMode.darken,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/vin6.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0.0, 112.0),
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Color(0xffecdce6),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(36.0, 142.0),
            child: Text(
              'Year',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(36.0, 157.0),
            child: Text(
              '2014',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(36.0, 197.0),
            child: Text(
              'Country',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(36.0, 211.0),
            child: Text(
              'French',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(134.0, 323.0),
            child: Text(
              '/0,2gal',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey,
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(37.0, 317.0),
            child: Text(
              '\$109.99',
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(36.0, 259.0),
            child: Text(
              'Type',
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(36.0, 277.0),
            child: const Text(
              'White Dry',
              style: TextStyle(
                fontFamily: 'Comic Sans MS',
                fontSize: 14,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 175.0, start: 33.0),
            Pin(size: 24.0, middle: 0.7379),
            child: const Text(
              'Nutritional values',
              style: TextStyle(
                fontFamily: 'Comic Sans MS',
                fontSize: 17,
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 325.0, start: 31.0),
            Pin(size: 18.0, middle: 0.6204),
            child: Text(
              'A deluge of rain in february meant we entered the',
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 345.0, start: 31.0),
            Pin(size: 18.0, middle: 0.6477),
            child: Text(
              'growing season with saturated soils and a full water',
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, start: 31.0),
            Pin(size: 18.0, middle: 0.6751),
            child: Text(
              'table.',
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 276.0, start: 31.0),
            Pin(size: 19.0, middle: 0.7744),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 43.0, start: 0.0),
                  Pin(start: 0.0, end: 1.0),
                  child: Text(
                    'Sugar  ',
                    style:
                        GoogleFonts.poppins(fontSize: 13, color: Colors.grey),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 70.0, start: 41.0),
                  Pin(start: 1.0, end: 0.0),
                  child: Text(
                    '5g/0,3 gal',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 65.0, middle: 0.5800),
                  Pin(start: 1.0, end: 0.0),
                  child: Text(
                    'Calories',
                    style:
                        GoogleFonts.poppins(fontSize: 13, color: Colors.grey),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 95.0, end: 0.0),
                  Pin(start: 0.0, end: 2.0),
                  child: Text(
                    '23kcal/0,3gal',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, start: 31.0),
            Pin(size: 39.5, middle: 0.5903),
            child: Text(
              'Description',
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 275.0, start: 32.0),
            Pin(size: 73.0, start: 27.0),
            child: Text(
              'Domaine Carneros\nLe Reve Blanc',
              style: GoogleFonts.bodoniModa(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, start: 22.0),
            Pin(size: 36.0, end: 43.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 12.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      fontFamily: 'Comic Sans MS',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 38.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff2ebef),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 38.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff2ebef),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 8.0, start: 15.0),
                  Pin(start: 4.0, end: 4.0),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontFamily: 'Comic Sans MS',
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, end: 14.0),
                  Pin(start: 5.0, end: 3.0),
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontFamily: 'Comic Sans MS',
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 188.0, end: 20.0),
            Pin(size: 70.0, end: 30.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.PushUp,
                  ease: Curves.easeOut,
                  duration: 0.7,
                  pageBuilder: () => const CartScreen(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_chaqud,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                  Align(
                    alignment: const Alignment(0.081, -0.057),
                    child: SizedBox(
                      width: 74.0,
                      height: 20.0,
                      child: Text(
                        'Add cart',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             ),
        ],
      ),
    );
  }
}

const String _svg_fzr2kl =
    '<svg viewBox="363.0 79.0 129.0 139.0" ><path transform="translate(363.0, 79.0)" d="M 64.5 0 C 100.1223602294922 0 129 31.1162109375 129 69.5 C 129 107.8837890625 100.1223602294922 139 64.5 139 C 28.87763595581055 139 0 107.8837890625 0 69.5 C 0 31.1162109375 28.87763595581055 0 64.5 0 Z" fill="#d4bbcb" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-opacity="0.38" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lsy0bm =
    '<svg viewBox="323.0 240.0 40.0 40.0" ><path transform="translate(323.0, 240.0)" d="M 20 0 C 31.04569435119629 0 40 8.954306602478027 40 20 C 40 31.04569435119629 31.04569435119629 40 20 40 C 8.954306602478027 40 0 31.04569435119629 0 20 C 0 8.954306602478027 8.954306602478027 0 20 0 Z" fill="#d4bbcb" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-opacity="0.38" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tvxd5 =
    '<svg viewBox="400.0 351.3 20.0 20.0" ><path transform="translate(400.0, 351.27)" d="M 10 0 C 15.52284812927246 0 20 4.477153301239014 20 10 C 20 15.52284812927246 15.52284812927246 20 10 20 C 4.477153301239014 20 0 15.52284812927246 0 10 C 0 4.477153301239014 4.477153301239014 0 10 0 Z" fill="#d4bbcb" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-opacity="0.38" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hbfav6 =
    '<svg viewBox="0.5 773.5 430.0 2.0" ><path transform="translate(0.5, 773.5)" d="M 0 0 L 430 2" fill="none" stroke="#f2ebef" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_chaqud =
    '<svg viewBox="208.0 832.0 198.0 77.0" ><path transform="translate(208.0, 832.0)" d="M 20 0 L 178 0 C 189.0457000732422 0 198 8.954304695129395 198 20 L 198 57 C 198 68.04569244384766 189.0457000732422 77 178 77 L 20 77 C 8.954304695129395 77 0 68.04569244384766 0 57 L 0 20 C 0 8.954304695129395 8.954304695129395 0 20 0 Z" fill="#4e1315" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';