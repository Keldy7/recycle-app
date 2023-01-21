import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetcours/form_screen.dart';

class MapDeliveryScreen extends StatelessWidget {
  const MapDeliveryScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 64.0, end: 54.0),
            Pin(size: 72.0, end: 49.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.PushUp,
                  ease: Curves.easeOut,
                  duration: 0.7,
                  pageBuilder: () => const CreditCardForm(),
                ),
              ],
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff4e131f),
                    borderRadius: BorderRadius.circular(20.0),
                    border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(33.0, 21.0),
                  child: Text(
                    'Proceed to Payments',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          ),
          Pinned.fromPins(
            Pin(start: 1.5, end: -1.5),
            Pin(size: 522.0, start: 69.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: const Offset(33.5, 499.0),
                  child: const Text(
                    'Total Price',
                    style: TextStyle(
                      fontFamily: 'Comic Sans MS',
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    softWrap: false,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: const Offset(290.5, 499.0),
                          child: const Text(
                            '\$494.9',
                            style: TextStyle(
                              fontFamily: 'Comic Sans MS',
                              fontSize: 16,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Padding(
                          padding:
                            const EdgeInsets.fromLTRB(8.0, 1.0, 0.0, 60.0),
                          child: Stack(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Transform.translate(
                                    offset: const Offset(9.5, 0.0),
                                    child: SizedBox(
                                      width: 344.0,
                                      height: 53.0,
                                      child: Stack(
                                        children: <Widget>[
                                          Transform.translate(
                                            offset: const Offset(158.0, 0.0),
                                            child: Container(
                                              width: 186.0,
                                              height: 53.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xfff6f4f4),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xfff6f4f4)),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: const Offset(233.0, 13.0),
                                            child: Text(
                                              'Pickup',
                                              style: GoogleFonts.poppins(
                                                fontSize: 17,
                                                color: const Color(0xff4e131f),
                                                fontWeight: FontWeight.w400,
                                              ),
                                              softWrap: false,
                                            ),
                                          ),
                                          Container(
                                            width: 197.0,
                                            height: 53.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xff4e131f),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                  width: 1.0,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: const Offset(60.0, 13.0),
                                            child: Text(
                                              'Delivery',
                                              style: GoogleFonts.poppins(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              softWrap: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(0.0, 121.5),
                                    child: SizedBox(
                                      width: 430.0,
                                      height: 2.0,
                                      child: SvgPicture.string(
                                        _svg_lpvwwq,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(43.5, 84.0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.access_time,
                                          color: Color(0xff4e131f)),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          '30-40 min',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                          ),
                                          softWrap: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(41.5, 130.0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.map,
                                          color: Color(0xff4e131f)),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          '2342 W Cuillerton St',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                          ),
                                          softWrap: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 20.5, end: 23.5),
                                    Pin(size: 208.0, middle: 0.673),
                                    child:
                                        // Adobe XD layer: 'Screenshot_20230120…' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/localisation.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 20.5, end: 23.5),
                                    Pin(size: 60.0, end: 0.0),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xfff6f4f4),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(size: 271.0, start: 35.0),
                                          Pin(size: 24.0, middle: 0.5),
                                          child: Text(
                                            'Apartment number, floor, office',
                                            style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              color: Color(0x40000000),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            softWrap: false,
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_lpvwwq =
    '<svg viewBox="0.0 139.5 430.0 1.9" ><path transform="translate(0.0, 139.46)" d="M 0 0 L 430 1.894009947776794" fill="none" stroke="#f2ebef" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
