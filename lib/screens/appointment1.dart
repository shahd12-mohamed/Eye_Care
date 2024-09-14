import 'package:eye_care/screens/upload/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils.dart';
import 'EyeCubit.dart';
import 'EyeStates.dart';
import 'ShareEye.dart';


class appointment1 extends StatefulWidget{
  const appointment1({super.key});

  @override
  State<appointment1> createState() => _appointment1State();
}

class _appointment1State extends State<appointment1> {
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
     create: (BuildContext context  )=>EyeCubit(),
     child: BlocConsumer<EyeCubit,EyeStates>(
       listener: (context,state){},
       builder: (context,state){
       return Scaffold(
           appBar: AppBar(
             leading: IconButton(
               icon: const Icon(
                   Icons.arrow_back_ios
               ),
               onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: ((context) => upload() )));
               },
             ),
             title:  Center(
               child: Text('Appointment',
                 style: SafeGoogleFont (
                   'Literata',
                   fontSize: 22,
                   fontWeight: FontWeight.w700,
                   //height: 1.2*ffem/fem,
                   //color: Color(0xffffffff),
                 ),),
             ),
           ),
           body: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     decoration: BoxDecoration(
                         color: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ,
                         borderRadius: BorderRadius.circular(10)
                     ),
                     height: 45,
                     width: 250,
                     child: const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text('Welcome, Dr: Sara',
                             style: TextStyle(
                               color: Colors.black,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint1();
                   showModalBottomSheet(context: context,
                       isDismissible: false,
                       shape: const RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                             topRight: Radius.circular(20),
                             topLeft: Radius.circular(20),
                           )
                       ),
                       builder: (context){
                         return Column(
                           children: [
                             Text('Eye Care System',
                               style:SafeGoogleFont (
                                 'Literata',
                                 fontSize: 22,
                                 fontWeight: FontWeight.w700,
                                 //height: 1.2*ffem/fem,
                                 //color: Color(0xffffffff),
                               ) ,),
                             const Divider(),
                             Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: Row(
                                 children: [
                                   Text('DoctorID: ',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 18,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                   Text('20',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 16,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: Row(
                                 children: [
                                   Text('PatientID: ',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 18,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                   Text('2030',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 16,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: Row(
                                 children: [
                                   Text('Exam Analysis Date: ',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 18,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                   Text('20-5-2023',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 16,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: Row(
                                 children: [
                                   Text('Exam Result: ',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 18,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                   Text('Retinal Disease',
                                     style: SafeGoogleFont (
                                       'Literata',
                                       fontSize: 16,
                                       fontWeight: FontWeight.w700,
                                       //height: 1.2*ffem/fem,
                                       //color: Color(0xffffffff),
                                     ),),
                                 ],
                               ),
                             ),
                             SizedBox(
                               height: 130,
                               width: 250,
                               child:  Image.asset('images/removebg-preview-1-ZHx.png',

                               ),
                             ),
                           ],
                         );
                       });
                   return null;
                 }, c: const Color(0xff074452),
                     co:  EyeCubit.get(context).appointment1?const Color(0xff808080):const Color(0xff074452),
                     colContainer: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),

                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint2();
                   return null;
                 }, c: const Color(0xff074452),
                     co:  EyeCubit.get(context).appointment2?const Color(0xff808080):const Color(0xff074452),
                     colContainer: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),

                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint3();
                   return null;
                 }, c: const Color(0xff074452),
                     co:  EyeCubit.get(context).appointment3?const Color(0xff808080):const Color(0xff074452),
                     colContainer:Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),

                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint4();
                   return null;
                 }, c: const Color(0xff074452),
                     co:  EyeCubit.get(context).appointment4?const Color(0xff808080):const Color(0xff074452),
                     colContainer: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),

                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint5();
                   return null;
                 }, c: const Color(0xff074452),
                     co:  EyeCubit.get(context).appointment5?const Color(0xff808080):const Color(0xff074452),
                     colContainer: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),

                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint6();
                   return null;
                 }, c: const Color(0xff074452),
                     co:  EyeCubit.get(context).appointment6?const Color(0xff808080):const Color(0xff074452),
                     colContainer: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),

                 CustomContainer(onpressed: (){
                   return null;


                 }, onpresed: (){
                   EyeCubit.get(context).ChangeButtonappoint7();
                   return null;
                 }, c: const Color(0xff074452),
                     co: EyeCubit.get(context).appointment7?const Color(0xff808080):const Color(0xff074452),
                     colContainer: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ),



               ],
             ),
           ),
         );
       },
     ),
   );
  }
}