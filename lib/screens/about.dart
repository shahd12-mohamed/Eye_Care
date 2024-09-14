import 'package:eye_care/screens/setting_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils.dart';
import 'EyeCubit.dart';
import 'EyeStates.dart';



class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BlocConsumer<EyeCubit,EyeStates>(
      listener: (context,state){},
      builder: (context,state){
       return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => setting_user() )));
                  },
                  icon: const Icon(
                      Icons.arrow_back_ios
                  ),
                ),
                title:  Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                  ),
                  child: Text(
                    'About',
                    textAlign: TextAlign.right,
                    style: SafeGoogleFont (
                      'Literata',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1*ffem/fem,
                      letterSpacing: -0.48*fem,
                      //color: Color(0xff074452),
                    ),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        // autogroupieb8uux (Y68NnR2HtwzaYQLZiMiEB8)
                        width: double.infinity,
                        height: 660*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // thehumaneyeandthreecommoneyedi (16:560)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 376*fem,
                                  height: 660*fem,
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Literata',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1*ffem/fem,
                                        letterSpacing: -0.4*fem,
                                        color: const Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'the human eye and three common eye diseases\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xffc10303),
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Eye:\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff074452),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Complex organ responsible for vision.\nParts include cornea, iris, lens, retina, and optic nerve.\nConverts light into electrical signals sent to the brain.\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.25*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Cataract:\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff074452),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Clouding of the eye\'s natural lens.\nCommonly caused by aging or factors like UV exposure.\nSymptoms: blurry vision, light sensitivity, halos around lights.\nTreatment: surgical removal of cloudy lens, artificial lens replacement',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.25*ffem/fem,
                                            letterSpacing: -0.32*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: '.\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.25*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Glaucoma:\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff074452),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Group of eye conditions damaging the optic nerve.\nOften due to increased eye pressure.\nSymptoms: loss of peripheral vision, blurred vision, eye pain.\nTreatment: medications, laser therapy, surgery to lower eye pressure.\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.25*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Diabetic Retinopathy:\n',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff074452),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Eye disease in individuals with diabetes.\nHigh blood sugar damages retinal blood vessels.\nFour stages: mild, moderate, severe nonproliferative, proliferative.\nSymptoms: blurred vision, floaters, difficulty seeing colors.\nManagement: blood sugar control, regular eye exams, laser/surgical treatments.',
                                          style: SafeGoogleFont (
                                            'Literata',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.25*ffem/fem,
                                            letterSpacing: -0.4*fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
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
            )
        );
      },

    );
  }
}