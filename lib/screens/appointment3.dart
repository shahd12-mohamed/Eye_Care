import 'package:flutter/material.dart';

import '../core/utils.dart';



class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // appointment3En2 (19:484)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 0*fem, 29*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(40*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // iphonestatusbar5Xk (19:485)
                margin: EdgeInsets.fromLTRB(23.84*fem, 0*fem, 26.56*fem, 14*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timezei (19:493)
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
                      // receptiontVC (19:488)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.85*fem, 1*fem),
                      width: 18.15*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/page-1/images/reception-os4.png',
                        width: 18.15*fem,
                        height: 11*fem,
                      ),
                    ),
                    Container(
                      // wifibuQ (19:486)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                      width: 18*fem,
                      height: 13*fem,
                      child: Image.asset(
                        'assets/page-1/images/wifi-wcS.png',
                        width: 18*fem,
                        height: 13*fem,
                      ),
                    ),
                    Container(
                      // batteryjEv (19:487)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                      width: 26.6*fem,
                      height: 12.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/battery-DXk.png',
                        width: 26.6*fem,
                        height: 12.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupqwnrFUA (Y68RFRkL8rKgHGPFobqWNr)
                margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 110.48*fem, 12*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // backnavsb2E (19:496)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.67*fem, 0*fem),
                      width: 32.85*fem,
                      height: 32*fem,
                      child: Image.asset(
                        'assets/page-1/images/back-navs-5Mg.png',
                        width: 32.85*fem,
                        height: 32*fem,
                      ),
                    ),
                    Text(
                      // appointment6za (19:495)
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
                // component10pva (19:527)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.76*fem),
                width: 342.64*fem,
                height: 45.24*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle17Ltv (I19:527;1:158)
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
                      // welcomedrsaraqqg (19:528)
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
                // component4iea (19:500)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
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
                      // rectangle17zc6 (I19:500;1:158)
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
                      // timehmQ (19:619)
                      left: 18*fem,
                      top: 75*fem,
                      child: Align(
                        child: SizedBox(
                          width: 50*fem,
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
                      // oJe (19:618)
                      left: 75*fem,
                      top: 44*fem,
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
                      // dategtE (19:617)
                      left: 19*fem,
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
                      // mohamedahmedyasserCLn (19:616)
                      left: 137*fem,
                      top: 11*fem,
                      child: Align(
                        child: SizedBox(
                          width: 177*fem,
                          height: 15*fem,
                          child: Text(
                            'Mohamed Ahmed Yasser',
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
                      // patientnametUW (19:615)
                      left: 19*fem,
                      top: 12*fem,
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
                      // buttonykr (19:501)
                      left: 115*fem,
                      top: 100*fem,
                      child: Container(
                        width: 128*fem,
                        height: 31*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(99*fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0*fem, 4*fem),
                              blurRadius: 2*fem,
                            ),
                          ],
                        ),
                        child: Container(
                          // bgUxW (19:502)
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xff808080),
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
                      // closenavsnTQ (19:506)
                      left: 324*fem,
                      top: 7*fem,
                      child: Align(
                        child: SizedBox(
                          width: 32*fem,
                          height: 32*fem,
                          child: Image.asset(
                            'assets/page-1/images/close-navs-mka.png',
                            width: 32*fem,
                            height: 32*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // pmVMp (19:620)
                      left: 75*fem,
                      top: 75*fem,
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
                  ],
                ),
              ),
              Container(
                // autogroupp3dgPTC (Y68RMB5kiWmnDkcGW9P3dg)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                width: 460.31*fem,
                height: 155*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // xKLr (19:494)
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
                      // component5dMY (19:511)
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
                              // rectangle17u4A (I19:511;1:158)
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
                              // pmbxa (19:512)
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
                              // amanymostafashabanhki (19:513)
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
                              // closenavsPtS (19:514)
                              left: 328*fem,
                              top: 9*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 32*fem,
                                  height: 32*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/close-navs-4WA.png',
                                    width: 32*fem,
                                    height: 32*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // buttonWiA (19:519)
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
                                  // bgpir (19:520)
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
                              // timeiZL (19:524)
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
                              // datecPp (19:525)
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
                              // patientnameudp (19:526)
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
                              // cHL (19:529)
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
                // component11tke (19:530)
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
                      // rectangle17n5L (I19:530;1:158)
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
                      // mohabesamhassantPG (19:531)
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
                      // closenavsBtA (19:532)
                      left: 324*fem,
                      top: 12*fem,
                      child: Align(
                        child: SizedBox(
                          width: 32*fem,
                          height: 32*fem,
                          child: Image.asset(
                            'assets/page-1/images/close-navs-UwQ.png',
                            width: 32*fem,
                            height: 32*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // HgJ (19:537)
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
                      // timeyp2 (19:538)
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
                      // date5s4 (19:539)
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
                      // patientnameb4i (19:540)
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
                      // pmHy8 (19:541)
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
                      // buttonbD8 (19:542)
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
                          // bgWaz (19:543)
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
                // component12DEW (19:547)
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
                      // rectangle17v8v (I19:547;1:158)
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
                      // mohabesamhassanpk6 (19:548)
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
                      // closenavsXPc (19:549)
                      left: 324*fem,
                      top: 12*fem,
                      child: Align(
                        child: SizedBox(
                          width: 32*fem,
                          height: 32*fem,
                          child: Image.asset(
                            'assets/page-1/images/close-navs-s1x.png',
                            width: 32*fem,
                            height: 32*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 374 (19:554)
                      left: 72*fem,
                      top: 47*fem,
                      child: Align(
                        child: SizedBox(
                          width: 63*fem,
                          height: 15*fem,
                          child: Text(
                            '20-2-2024',
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
                      // timehhQ (19:555)
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
                      // datebGz (19:556)
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
                      // patientnameVNN (19:557)
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
                      // pmBkz (19:558)
                      left: 75*fem,
                      top: 79*fem,
                      child: Align(
                        child: SizedBox(
                          width: 62*fem,
                          height: 15*fem,
                          child: Text(
                            '10.00 PM',
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
                      // buttonHp2 (19:559)
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
                          // bgbZp (19:560)
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
      ),
          );
  }
}