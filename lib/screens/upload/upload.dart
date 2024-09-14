import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils.dart';
import '../EyeCubit.dart';
import '../EyeStates.dart';
import '../ShareEye.dart';
import '../appointment1.dart';
import '../setting.dart';
import 'Cubit/EyeUploadCubit.dart';
import 'Cubit/EyeUploadStates.dart';




class upload extends StatelessWidget {


  upload({super.key});

  var scaffoldKey =GlobalKey<ScaffoldState>();

  var formKey=GlobalKey<FormState>();

  var formKey2=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MultiBlocProvider(

      providers: [
        BlocProvider(create:  (BuildContext context)=> EyeCubit(),)
      ],
      child: BlocProvider(
        create: (BuildContext context) => EyeUploadCubit(),
        child: BlocConsumer<EyeUploadCubit,EyeUploadStates>(
          listener: (context,state){},
          builder: (context,state){
            return SafeArea(

              child: Scaffold(
                key: scaffoldKey,
                appBar: AppBar(
                  title: Center(
                    child: Text('Retinal Disease',
                      style: SafeGoogleFont (
                        'Literata',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        //height: 1.2*ffem/fem,
                        //color: Color(0xffffffff),
                      ),),
                  ),
                  actions: [
                    PopupMenuButton(
                      child: const Icon(
                        Icons.more_horiz_outlined,
                      ),itemBuilder: (context)=>[
                      PopupMenuItem(child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => appointment1() )));
                              },
                              child: Row(
                                children: [
                                  const Icon(Icons.calendar_month_outlined,
                                    size: 20,
                                    color: Color(0xff074452),),
                                  MyText(text: 'Appointment',
                                      font: 15, c: const Color(0xff074452)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                      PopupMenuItem(child: Column(
                        children: [


                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => settingEye() )));
                            },
                            child: Row(children: [
                              const Icon(Icons.settings,
                                size: 20,
                                color: Color(0xff074452),),
                              MyText(text: 'Setting',
                                  font: 15,
                                  c:const Color(0xff074452)),
                            ],),
                          ),


                        ],
                      )),

                      PopupMenuItem(child: Column(
                        children: [


                          InkWell(
                            onTap: (){
            showDialog(context: context, builder: (context){
            return AlertDialog(
            title: const Text('Logout App'),
            content: const Text('Are you want to logout?'),
            actions: [
            ElevatedButton(onPressed: (){
            Navigator.of(context).pop(false);
            },style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(const Color(0xff074552)),
            ),
            child: const Text('No')),
            ElevatedButton(
            style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(const Color(0xff074552)),
            ),
            onPressed: (){
            Navigator.of(context).pop(true);
            }, child: const Text('Yes')),
            ],
            );
            });
            },

            child: Row(children: [
            const Icon(Icons.logout,
            size: 20,
            color:Color(0xff074452),),
            MyText(text: 'Logout', font: 16,
            c: const Color(0xff074452)),
          ]),
     )



           ]),
                      ) ],
                    ),
                  ],
                      ),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      BlocBuilder<EyeCubit,EyeStates>(
                        builder: (context, state){
                          if (state is EyeInitialImageState){
                            return  Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: SizedBox(
                                  width: 293*fem,
                                  height: 275*fem,
                                  child: InkWell(
                                    onTap: (){
                                      context.read<EyeCubit>().pickedImage();
                                    },

                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(51),
                                        color: Theme.of(context).brightness == Brightness.light ? const Color(0xffEEEEEE) :Colors.grey,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x00074452),
                                            offset: Offset(2, 2),
                                            blurRadius: 1,
                                          ),
                                        ],
                                      ),

                                      child:const Icon(
                                        Icons.add_a_photo,
                                        size: 80,
                                        color: Color(0xff074452),
                                      ),


                                    ),
                                  ),
                                ),
                              ),
                            );


                          }else if(state is EyeImageLoadingState){
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: SizedBox(
                                  width: 293*fem,
                                  height: 275*fem,
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(51),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0x00074452),
                                              offset: Offset(2, 2),
                                              blurRadius: 1,
                                            ),
                                          ],
                                        ),
                                        child: Image.file(File(state.imagePath),width: 300,),



                                    ),
                                  ),
                                ),
                              ),

                            );
                          }else if (state is EyeImageErrorState){
                            return Center(
                              child:Column(
                                children: [
                                  Text(state.errorMessage),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  ElevatedButton(onPressed: (){
                                    context.read<EyeCubit>().reset();
                                  }, child: const Text("Try Again"),)
                                ],
                              ) ,
                            );
                          }
                          return Container();

                        },

                      ),
                      //EyeUploadCubit.get(context)._image == null ? Container() : Image.file(_image)
                      const SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: CustomButton( onpressed: () {
                          EyeCubit.get(context).ChangeButtonupload();
                          showModalBottomSheet(context: context,
                              isDismissible: false,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                )
                              ),
                              builder: (context){
                            return SizedBox(
                              height: 300,
                               child: Column(
                                 children: [

                                   const Padding(
                                     padding: EdgeInsets.all(10.0),
                                     child: Center(
                                       child: Text('Result',style: TextStyle(
                                         color: Colors.red,
                                         fontSize: 18,
                                         fontWeight: FontWeight.bold,
                                       ),),
                                     ),
                                   ),

                                   const Divider(thickness: 3,),
                                   const Text('Error',
                                       style:TextStyle(
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 16,
                                       )),

                                   const Text('sorry, i can not recognize',
                                       style:TextStyle(
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 16,
                                       )),


                                    SizedBox(
                                      height: 150,
                                      width: 300,
                                      child:  Image.asset('images/removebg-preview-1-ZHx.png',

                                      ),
                                    ),


                                 ],
                               ),
                            );
                          });
                          //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => clinical1() )));

                        },
                            text: 'Upload',
                            c: EyeCubit.get(context).isloged3?const Color(0xff808080):const Color(0xff074452)
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}