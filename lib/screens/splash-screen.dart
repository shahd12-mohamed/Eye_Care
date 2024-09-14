
import 'dart:async';
import 'package:flutter/material.dart';
import '../core/components/components.dart';
import 'login/signinEyeCare.dart';




class SplashEye extends StatefulWidget {
  const SplashEye({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashEye> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>SigninEye()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            const CircleAvatar(
              backgroundImage: AssetImage("images/initial-letter-c-logo-design-template-with-eye-concept-premium-vector-removebg-preview-1.png"),
              radius: 80,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 10,),

            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) =>SigninEye()));
              },
              child: mytext(
                  text: "Eye Care", siz: 48, col: const Color(0xff125B85), font: FontWeight.w500, fontS: FontStyle.italic),
            )



          ],
        ),
      ),
    );
  }

}