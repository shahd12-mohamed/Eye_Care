import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/components/components.dart';
import '../../core/utils.dart';
import '../clinical/cubit/EyeClinicalCubit.dart';
import '../clinical/cubit/EyeClinicalStates.dart';
import '../verification2.dart';



class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;
    return BlocProvider(
      create: (BuildContext context) =>EyeClinicalCubit(),
      child: BlocConsumer<EyeClinicalCubit,EyeClinicalStates>(
        listener: (context,state){},
        builder: (context,state) {
          return SafeArea(
              child: Scaffold(
                  body: SizedBox(
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(
                            // autogrouphbm8QVt (Y695PVs8bsHKoj97UBHBm8)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 26 * fem, 30 * fem),
                            width: 352 * fem,
                            height: 252 * fem,
                            child: Stack(
                              children: [

                                Positioned(
                                  // oremovebgpreview1eQE (28:798)
                                  left: 0 * fem,
                                  top: 7 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 352,
                                      height: 245,
                                      child: Image.asset(
                                        'images/o-removebg-preview-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Text(
                            'OTP verfication',
                            //textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Literata',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              height: 1 * ffem / fem,
                              letterSpacing: -0.48 * fem,
                              color: const Color(0xff074452),
                            ),
                          ),


                          const SizedBox(height: 10,),

                          Container(
                            // chooseemailorphonenumbertosend (28:800)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 11 * fem, 35 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 294 * fem,
                            ),
                            child: Text(
                              'Choose email or phone number to send one time Password',
                              style: SafeGoogleFont(
                                'Literata',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.485 * ffem / fem,
                                color: const Color(0xff808080),
                              ),
                            ),
                          ),


                          // Container(
                          //height: 50,
                          //width: 300,
                          //decoration: BoxDecoration(
                          //color: Colors.grey[100],
                          //borderRadius: BorderRadius.circular(30),
                          //boxShadow: [
                          //BoxShadow(
                          //color: Color(0x4c074452),
                          //offset: Offset(0*fem, 10*fem),
                          //blurRadius: 11*fem,
                          //),
                          //],
                          //),
                          //child: Column(
                          //children: [
                          //Padding(
                          //padding: const EdgeInsets.all(5.0),
                          //child: TabBar(
                          //controller: tabController,
                          //labelColor: Colors.white,
                          //indicatorColor: Colors.white,
                          //indicator: BoxDecoration(
                          //color: Color(0xff074452),
                          //borderRadius: BorderRadius.circular(30)
                          //),
                          //indicatorWeight: 0.5,
                          //unselectedLabelColor: Colors.grey,
                          //tabs: [
                          //Tab(
                          //text:'Email',
                          //),
                          //Tab(
                          //text:'Phone',


                          // ),
                          //],
                          //),
                          //),

                          //],
                          //),
                          //),


                          const SizedBox(height: 50,),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x4c074452),
                                    offset: Offset(0 * fem, 10 * fem),
                                    blurRadius: 11 * fem,
                                  ),
                                ],
                              ),
                              child: defaultButton(width: 300,
                                  height: 50,
                                  background: const Color(0xff074452),

                                  text: 'Send Code',
                                  function: () {
                                if(EyeClinicalCubit.get(context).model !=null){
                                  var model=EyeClinicalCubit.get(context).model;

                                  if(model!.isEmailVerified ==false)
                                       {
                                         Navigator.of(context).push(
                                             MaterialPageRoute(builder: ((context) =>
                                                 Verification2())));
                                       }
                                }

                                  }
                              ),
                            ),
                          ),


                        ]),
                  ))
          );
        }),
    );
  }
}
