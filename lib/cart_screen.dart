import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/map_screen.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Cart",
        style: TextStyle(
          color: Colors.black, 
          fontSize: 35)),
        elevation: 0.0,
        toolbarHeight: 35,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30),
              onPressed: () { Navigator.pop(context);},
            );
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: const Offset(0.5, 582.5),
            child: SizedBox(
              width: 430.0,
              height: 2.0,
              child: SvgPicture.string(
                _svg_g0cukm,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 62.0, end: 56.0),
            Pin(size: 82.0, end: 38.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.PushUp,
                  ease: Curves.easeOut,
                  duration: 0.7,
                  pageBuilder: () => const MapDeliveryScreen(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff4e131f),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 185.0,
                      height: 24.0,
                      child: Text(
                        'Proceed to Checkout',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: const Color(0xffffffff),
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

          
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.3136),
            Pin(size: 26.0, start: 82.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff3f2828),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                  margin: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 491.0, start: 73.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(size: 127.0, start: 0.0),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                            width: 429.0,
                            height: 127.0,
                            child: Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: const Offset(140.0, 7.0),
                                  child: SizedBox(
                                    width: 30.0,
                                    height: 24.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 30.0,
                                          height: 24.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0xfffff3f3),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 429.0,
                                  height: 127.0,
                                  color: Colors.white,
                                ),
                                Transform.translate(
                                  offset: const Offset(21.0, 15.7),
                                  child: SizedBox(
                                    width: 142.0,
                                    height: 90.0,
                                    child: SvgPicture.string(
                                      _svg_rob9r8,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(72.0, 23.0),
                                  child:
                                    Container(
                                      width: 28.0,
                                      height: 75.0,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/vin.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                ),
                                Transform.translate(
                                  offset: const Offset(179.0, 66.0),
                                  child: const Text(
                                    '\$219.98',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(179.0, 13.0),
                                  child: const Text(
                                    'Domaine Carneros Le Reve \nBlanc 2014',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(280.0, 72.0),
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(327.0, 72.0),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(291.0, 64.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: Color(0xfffce2e2),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(302.0, 70.0),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(148.0, 10.0),
                            child: SizedBox(
                              width: 25.0,
                              height: 25.0,
                              child: Stack(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(8.0, 2.7),
                                    child: const Text(
                                      'x',
                                      style: TextStyle(
                                        fontFamily: 'Comic Sans MS',
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 1.0),
                      Pin(size: 127.0, middle: 0.3333),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                            width: 429.0,
                            height: 127.0,
                            child: Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: const Offset(140.0, 7.0),
                                  child: SizedBox(
                                    width: 30.0,
                                    height: 24.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 30.0,
                                          height: 24.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0xfffff3f3),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 429.0,
                                  height: 127.0,
                                  color: Colors.white,
                                ),
                                Transform.translate(
                                  offset: const Offset(21.0, 15.7),
                                  child: SizedBox(
                                    width: 142.0,
                                    height: 90.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 142.0,
                                          height: 90.0,
                                          child: SvgPicture.string(
                                            _svg_awt2ny,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(42.0, 23.0),
                                  child:
                                      // Adobe XD layer: 'vin' (shape)
                                      Container(
                                    width: 85.0,
                                    height: 74.0,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/vin5.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(179.0, 66.0),
                                  child: const Text(
                                    '\$44.99',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(179.0, 13.0),
                                  child: const Text(
                                    'Bellavista Rose Franciacorta\n 2016',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(280.0, 72.0),
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(327.0, 72.0),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(291.0, 64.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: Color(0xffffe2e2),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(302.0, 70.0),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(148.0, 10.0),
                            child: SizedBox(
                              width: 25.0,
                              height: 25.0,
                              child: Stack(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(8.0, 2.7),
                                    child: const Text(
                                      'x',
                                      style: TextStyle(
                                        fontFamily: 'Comic Sans MS',
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(size: 127.0, middle: 0.6667),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                            width: 429.0,
                            height: 127.0,
                            child: Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: const Offset(140.0, 7.0),
                                  child: SizedBox(
                                    width: 30.0,
                                    height: 24.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 30.0,
                                          height: 24.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0xfffff3f3),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 429.0,
                                  height: 127.0,
                                  color: Colors.white,
                                ),
                                Transform.translate(
                                  offset: const Offset(21.0, 15.7),
                                  child: SizedBox(
                                    width: 142.0,
                                    height: 90.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 142.0,
                                          height: 90.0,
                                          child: SvgPicture.string(
                                            _svg_awt2ny,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(62.0, 23.0),
                                  child:
                                      // Adobe XD layer: 'vin' (shape)
                                      Container(
                                    width: 58.0,
                                    height: 70.0,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/vin3.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(179.0, 66.0),
                                  child: const Text(
                                    '\$79.99',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(179.0, 13.0),
                                  child: const Text(
                                    "L'Ermitage Brut Rose 2012",
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(280.0, 72.0),
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(327.0, 72.0),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                      fontFamily: 'Comic Sans MS',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(291.0, 64.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: Color(0xfffff3f3),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(302.0, 70.0),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(148.0, 10.0),
                            child: SizedBox(
                              width: 25.0,
                              height: 25.0,
                              child: Stack(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(8.0, 2.7),
                                    child: const Text(
                                      'x',
                                      style: TextStyle(
                                        fontFamily: 'Comic Sans MS',
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(size: 127.0, end: 0.0),
                      child: Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: const Offset(140.0, 7.0),
                            child: SizedBox(
                              width: 30.0,
                              height: 24.0,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 30.0,
                                    height: 24.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xfffff3f3),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 429.0,
                            height: 127.0,
                            color: Colors.white,
                          ),
                          Transform.translate(
                            offset: const Offset(21.0, 15.7),
                            child: SizedBox(
                              width: 142.0,
                              height: 90.0,
                              child: Stack(
                                children: <Widget>[
                                  SizedBox(
                                    width: 142.0,
                                    height: 90.0,
                                    child: SvgPicture.string(
                                      _svg_awt2ny,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(62.0, 23.0),
                            child:
                              Container(
                                width: 58.0,
                                height: 70.0,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/vin4.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                          ),
                          Transform.translate(
                            offset: const Offset(179.0, 66.0),
                            child: const Text(
                              '\$149.99',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(179.0, 13.0),
                            child: const Text(
                              "Giuilio Ferrari' Riserva del\nFondatore 2014",
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(280.0, 72.0),
                            child: const Text(
                              '-',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(327.0, 72.0),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(291.0, 64.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: Color(0xfffff3f3),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(302.0, 70.0),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'Comic Sans MS',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(148.0, 10.0),
                            child: SizedBox(
                              width: 25.0,
                              height: 25.0,
                              child: Stack(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(8.0, 2.7),
                                    child: const Text(
                                      'x',
                                      style: TextStyle(
                                        fontFamily: 'Comic Sans MS',
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(45.0, 596.0),
            child: Text(
              'Total Price',
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black,
              ),
              softWrap: false,
            ),
          ),
          Transform.translate(
            offset: const Offset(276.0, 600.0),
            child: const Text(
              '\$494.95',
              style: TextStyle(
                fontFamily: 'Comic Sans MS',
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_g0cukm =
    '<svg viewBox="0.5 582.5 430.0 2.0" ><path transform="translate(0.5, 582.5)" d="M 0 0 L 430 2" fill="none" stroke="#f2ebef" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rob9r8 =
    '<svg viewBox="21.0 15.7 142.0 90.4" ><path transform="translate(21.0, 15.72)" d="M 10 0 L 132 0 C 137.5228424072266 0 142 3.51855206489563 142 7.858906269073486 L 142 82.51851654052734 C 142 86.85887145996094 137.5228424072266 90.37742614746094 132 90.37742614746094 L 10 90.37742614746094 C 4.477152347564697 90.37742614746094 0 86.85887145996094 0 82.51851654052734 L 0 7.858906269073486 C 0 3.51855206489563 4.477152347564697 0 10 0 Z" fill="none" stroke="#fce2e2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_awt2ny =
    '<svg viewBox="0.0 0.0 142.0 90.4" ><path  d="M 10 0 L 132 0 C 137.5228424072266 0 142 3.51855206489563 142 7.858906269073486 L 142 82.51851654052734 C 142 86.85887145996094 137.5228424072266 90.37742614746094 132 90.37742614746094 L 10 90.37742614746094 C 4.477152347564697 90.37742614746094 0 86.85887145996094 0 82.51851654052734 L 0 7.858906269073486 C 0 3.51855206489563 4.477152347564697 0 10 0 Z" fill="none" stroke="#fce2e2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
