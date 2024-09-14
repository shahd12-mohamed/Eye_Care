
import 'package:eye_care/screens/upload/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/utils.dart';
import 'EyeCubit.dart';
import 'EyeStates.dart';
import 'ShareEye.dart';
import 'about.dart';

class settingEye extends StatelessWidget {
  const settingEye({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<EyeCubit,EyeStates>(
        listener: (context,state){},
        builder: (context,state){
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => upload() )));
                  },
                ),
                title: Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                  ),
                  child: Text(
                    'Setting',
                    textAlign: TextAlign.right,
                    style: SafeGoogleFont (
                      'Literata',
                      fontSize: 22,
                      //fontWeight: FontWeight.w700,
                      //height: 1*ffem/fem,
                      //letterSpacing: -0.48*fem,
                      //color: Color(0xff074452),
                    ),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [

                    Center(
                      child: Container(
                        height: 300,
                        width: 305,
                        child: Image.asset('images/teamwork-concept-with-tiny-people-characters-working-together-with-big-gears-settings-icons-teamwork-and-time-management-concept-flat-style-design-ve-2ab28hp-removebg-preview-1.png'),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){

                          },
                            child: Text(
                              'Dark Mode',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),),
                          const Spacer(),
                          IconButton(onPressed: (){

                            EyeCubit.get(context).changeAppMode();


                          }, icon: Icon(
                            EyeCubit.get(context).isLight?Icons.dark_mode: Icons.light_mode,
                            size: 20,
                          ))
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){},
                            child: Text(
                              'Language',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),),
                          const Spacer(),
                          IconButton(onPressed: (){}, icon: PopupMenuButton(
                            child: const Icon(
                              Icons.language,
                            ),
                            itemBuilder: (context)=>[
                            PopupMenuItem(child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => appointment1() )));
                                  },
                                  child: MyText(text: 'English',
                                          font: 15,
                                  c: const Color(0xff074452)),


                                ),

                              ],
                            )),

                            PopupMenuItem(child: Column(
                              children: [


                                InkWell(
                                  onTap: (){
                                   // Navigator.of(context).push(MaterialPageRoute(builder: ((context) => settingEye() )));
                                  },
                                  child:
                                    MyText(text: 'Arabic',
                                        font: 15, c: const Color(0xff074452)),


                                ),


                              ],
                            )),


                          ],
                          ),)
                        ],
                      ),
                    ),

                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          TextButton(onPressed: (){},
                            child: Text(
                              'About',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),),
                          const Spacer(),
                          IconButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const about() )));
                          }, icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ))
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


      );
  });}}
