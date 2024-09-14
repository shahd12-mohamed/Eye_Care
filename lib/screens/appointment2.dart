import 'package:flutter/material.dart';

import '../core/utils.dart';




class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // appointment2ETx (93:2037)
        padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 0*fem, 188*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // iphonestatusbar8JS (93:2038)
              margin: EdgeInsets.fromLTRB(23.84*fem, 0*fem, 26.56*fem, 14*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timeqTk (93:2046)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 208*fem, 0*fem),
                    child: Text(
                      '19:02',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1*ffem/fem,
                        letterSpacing: -0.36*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // receptionXbU (93:2041)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.85*fem, 1*fem),
                    width: 18.15*fem,
                    height: 11*fem,
                    child: Image.asset(
                      'assets/page-1/images/reception-x1L.png',
                      width: 18.15*fem,
                      height: 11*fem,
                    ),
                  ),
                  Container(
                    // wifiqs4 (93:2039)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                    width: 18*fem,
                    height: 13*fem,
                    child: Image.asset(
                      'assets/page-1/images/wifi-WrJ.png',
                      width: 18*fem,
                      height: 13*fem,
                    ),
                  ),
                  Container(
                    // batteryxwg (93:2040)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                    width: 26.6*fem,
                    height: 12.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/battery-AsY.png',
                      width: 26.6*fem,
                      height: 12.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouppfm8UQE (Y69ZAckGe3ShVUhVRyPFm8)
              margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 110.48*fem, 12*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // backnavsQYn (93:2049)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.67*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 32.85*fem,
                        height: 32*fem,
                        child: Image.asset(
                          'assets/page-1/images/back-navs-TDG.png',
                          width: 32.85*fem,
                          height: 32*fem,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    // appointmentGaz (93:2048)
                    'Appointment',
                    textAlign: TextAlign.right,
                    style: SafeGoogleFont (
                      'Literata',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1*ffem/fem,
                      letterSpacing: -0.48*fem,
                      color: const Color(0xff074452),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // component10oL2 (93:2086)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.76*fem),
              width: 342.64*fem,
              height: 45.24*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle177Li (I93:2086;1:158)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 252*fem,
                        height: 38*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: const Color(0x4cd2ebe7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // welcomedrsarapF8 (93:2087)
                    left: 27*fem,
                    top: 9*fem,
                    child: Align(
                      child: SizedBox(
                        width: 175*fem,
                        height: 20*fem,
                        child: Text(
                          'Welcome , Dr sara',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.4*fem,
                            color: const Color(0xff115b84),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupvo1xu1g (Y69ZGN5hDhtoRxvW8Wvo1x)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              width: 460.31*fem,
              height: 155*fem,
              child: Stack(
                children: [
                  Positioned(
                    // xDHG (93:2047)
                    left: 328.4468364716*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 12*fem,
                        height: 20*fem,
                        child: Text(
                          'x',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // component5WnA (93:2070)
                    left: 0*fem,
                    top: 6*fem,
                    child: Container(
                      width: 460.31*fem,
                      height: 149*fem,
                      decoration: BoxDecoration (
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle17b2v (I93:2070;1:158)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 366*fem,
                                height: 149*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: const Color(0x4cd2ebe7),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // pmh5x (93:2071)
                            left: 82*fem,
                            top: 74*fem,
                            child: Align(
                              child: SizedBox(
                                width: 61*fem,
                                height: 15*fem,
                                child: Text(
                                  '15.00 PM',
                                  style: SafeGoogleFont (
                                    'Literata',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1*ffem/fem,
                                    letterSpacing: -0.3*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // amanymostafashabana9k (93:2072)
                            left: 137*fem,
                            top: 15*fem,
                            child: Align(
                              child: SizedBox(
                                width: 169*fem,
                                height: 15*fem,
                                child: Text(
                                  'Amany Mostafa Shaban',
                                  style: SafeGoogleFont (
                                    'Literata',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1*ffem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // closenavsrsx (93:2073)
                            left: 328*fem,
                            top: 9*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32*fem,
                                height: 32*fem,
                                child: Image.asset(
                                  'assets/page-1/images/close-navs-uBc.png',
                                  width: 32*fem,
                                  height: 32*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // buttonySn (93:2078)
                            left: 115*fem,
                            top: 100*fem,
                            child: Container(
                              width: 128*fem,
                              height: 31*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(99*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f074452),
                                    offset: Offset(0*fem, 4*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Container(
                                // bg61c (93:2079)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xff074452),
                                  borderRadius: BorderRadius.circular(99*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Write Report',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2857142857*ffem/fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // timeB34 (93:2083)
                            left: 15*fem,
                            top: 74*fem,
                            child: Align(
                              child: SizedBox(
                                width: 53*fem,
                                height: 16*fem,
                                child: Text(
                                  'Time : ',
                                  style: SafeGoogleFont (
                                    'Literata',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1*ffem/fem,
                                    letterSpacing: -0.32*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // datefyp (93:2084)
                            left: 15*fem,
                            top: 41*fem,
                            child: Align(
                              child: SizedBox(
                                width: 44*fem,
                                height: 16*fem,
                                child: Text(
                                  'Date :',
                                  style: SafeGoogleFont (
                                    'Literata',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1*ffem/fem,
                                    letterSpacing: -0.32*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // patientnamenHk (93:2085)
                            left: 15*fem,
                            top: 13*fem,
                            child: Align(
                              child: SizedBox(
                                width: 111*fem,
                                height: 16*fem,
                                child: Text(
                                  'Patient name :',
                                  style: SafeGoogleFont (
                                    'Literata',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1*ffem/fem,
                                    letterSpacing: -0.32*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // UwG (93:2088)
                            left: 82*fem,
                            top: 45*fem,
                            child: Align(
                              child: SizedBox(
                                width: 61*fem,
                                height: 15*fem,
                                child: Text(
                                  '19-2-2024',
                                  style: SafeGoogleFont (
                                    'Literata',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1*ffem/fem,
                                    letterSpacing: -0.3*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
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
            Container(
              // component11nSA (93:2089)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              width: 460.31*fem,
              height: 149*fem,
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle17fVx (I93:2089;1:158)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 366*fem,
                        height: 149*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: const Color(0x4cd2ebe7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mohabesamhassanasp (93:2090)
                    left: 144*fem,
                    top: 11*fem,
                    child: Align(
                      child: SizedBox(
                        width: 147*fem,
                        height: 15*fem,
                        child: Text(
                          'Mohab Esam Hassan',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // closenavs5Zg (93:2091)
                    left: 324*fem,
                    top: 12*fem,
                    child: Align(
                      child: SizedBox(
                        width: 32*fem,
                        height: 32*fem,
                        child: Image.asset(
                          'assets/page-1/images/close-navs-Yzr.png',
                          width: 32*fem,
                          height: 32*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // bH8 (93:2096)
                    left: 72*fem,
                    top: 47*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 15*fem,
                        child: Text(
                          '19-2-2024',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.3*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // timeVtJ (93:2097)
                    left: 15*fem,
                    top: 77*fem,
                    child: Align(
                      child: SizedBox(
                        width: 53*fem,
                        height: 16*fem,
                        child: Text(
                          'Time : ',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.32*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dateoPC (93:2098)
                    left: 14*fem,
                    top: 44*fem,
                    child: Align(
                      child: SizedBox(
                        width: 44*fem,
                        height: 16*fem,
                        child: Text(
                          'Date :',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.32*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // patientnametvS (93:2099)
                    left: 14*fem,
                    top: 11*fem,
                    child: Align(
                      child: SizedBox(
                        width: 111*fem,
                        height: 16*fem,
                        child: Text(
                          'Patient name :',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.32*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pmzCn (93:2100)
                    left: 75*fem,
                    top: 79*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 15*fem,
                        child: Text(
                          '15.00 PM',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.3*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // button5k2 (93:2101)
                    left: 126*fem,
                    top: 102*fem,
                    child: Container(
                      width: 128*fem,
                      height: 31*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(99*fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f074452),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // bgnuL (93:2102)
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xff074452),
                          borderRadius: BorderRadius.circular(99*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Write Report',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2857142857*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // component12thU (93:2106)
              width: 460.31*fem,
              height: 149*fem,
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle17zVc (I93:2106;1:158)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 366*fem,
                        height: 149*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: const Color(0x4cd2ebe7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mohabesamhassanVxA (93:2107)
                    left: 144*fem,
                    top: 11*fem,
                    child: Align(
                      child: SizedBox(
                        width: 147*fem,
                        height: 15*fem,
                        child: Text(
                          'Mohab Esam Hassan',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // closenavsoCA (93:2108)
                    left: 324*fem,
                    top: 12*fem,
                    child: Align(
                      child: SizedBox(
                        width: 32*fem,
                        height: 32*fem,
                        child: Image.asset(
                          'assets/page-1/images/close-navs-E8N.png',
                          width: 32*fem,
                          height: 32*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // WMU (93:2113)
                    left: 72*fem,
                    top: 47*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 15*fem,
                        child: Text(
                          '19-2-2024',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.3*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // time1p2 (93:2114)
                    left: 15*fem,
                    top: 77*fem,
                    child: Align(
                      child: SizedBox(
                        width: 53*fem,
                        height: 16*fem,
                        child: Text(
                          'Time : ',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.32*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dateiTY (93:2115)
                    left: 14*fem,
                    top: 44*fem,
                    child: Align(
                      child: SizedBox(
                        width: 44*fem,
                        height: 16*fem,
                        child: Text(
                          'Date :',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.32*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // patientnamecYv (93:2116)
                    left: 14*fem,
                    top: 11*fem,
                    child: Align(
                      child: SizedBox(
                        width: 111*fem,
                        height: 16*fem,
                        child: Text(
                          'Patient name :',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1*ffem/fem,
                            letterSpacing: -0.32*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pmi6A (93:2117)
                    left: 75*fem,
                    top: 79*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 15*fem,
                        child: Text(
                          '15.00 PM',
                          style: SafeGoogleFont (
                            'Literata',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.3*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // buttondD8 (93:2118)
                    left: 126*fem,
                    top: 102*fem,
                    child: Container(
                      width: 128*fem,
                      height: 31*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(99*fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f074452),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Container(
                        // bg9SN (93:2119)
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xff074452),
                          borderRadius: BorderRadius.circular(99*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Write Report',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2857142857*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
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
          );
  }
}