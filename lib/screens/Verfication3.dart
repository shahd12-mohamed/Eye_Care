
import 'package:flutter/material.dart';

import '../core/utils.dart';


class Verification3 extends StatelessWidget{
  const Verification3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [
            SizedBox(
              width: 316,
              height: 242,
              child: Image.asset('images/whatsappimage2024-02-17at0002-1.png'),
            ),
            Text(
              'Sucess',
              //textAlign: TextAlign.right,
              style: SafeGoogleFont (
                'Literata',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                //height: 1*ffem/fem,
                //letterSpacing: -0.48*fem,
                color: const Color(0xff074452),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Congratulations! You have been successfully authenticated',
                  style: SafeGoogleFont (
                    'Literata',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    // height: 1.485*ffem/fem,
                    color: const Color(0xff808080),
                  ),
                ),
              ),
            ),







          ],
        ),
      ),
    );
  }

}