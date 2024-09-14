import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../core/components/components.dart';
import '../core/utils.dart';
import 'Verfication3.dart';
import 'about.dart';
import 'register/create-new-password-xvS.dart';

class Verification2 extends StatelessWidget{
  const Verification2({super.key});

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(
         title: Center(
           child: Text(
             'Verification',
             //textAlign: TextAlign.right,
             style: SafeGoogleFont (
               'Literata',
               fontSize: 22,
               fontWeight: FontWeight.w700,
               //height: 1*ffem/fem,
               //letterSpacing: -0.48*fem,
               color: const Color(0xff074452),
             ),
           ),
         ),
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(
                 left: 20,
                 bottom: 10,
               ),
               child: Center(
                 child: Container(
                   width: 200,
                   height: 200,
                   child: Image.asset('images/shield-lock-HJW.png'),
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text(
                 'Enter 6 digit verification code sent to your phone number',
                 style: SafeGoogleFont (
                   'Literata',
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                  // height: 1.485*ffem/fem,
                   color: const Color(0xff808080),
                 ),
               ),
             ),

             Container(
               width: 300,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   SizedBox(
                     height: 42,
                     width: 42,
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderSide: const BorderSide(
                             color: Color(0xff074452),
                             width: 2,
                           ),
                           borderRadius: BorderRadius.circular(12)
                         ),
                       ),
                       onChanged: (value){
                         if(value.length ==1){
                          FocusScope.of(context).nextFocus();
                         }
                       },
                       style: Theme.of(context).textTheme.bodyMedium,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,],

                     ),
                   ),
                   SizedBox(
                     height: 42,
                     width: 42,
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                               color: Color(0xff074452),
                               width: 2,
                             ),
                             borderRadius: BorderRadius.circular(12)
                         ),
                       ),
                       onChanged: (value){
                         if(value.length ==1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       style: Theme.of(context).textTheme.bodyMedium,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,],

                     ),
                   ),
                   SizedBox(
                     height: 42,
                     width: 42,
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                               color: Color(0xff074452),
                               width: 2,
                             ),
                             borderRadius: BorderRadius.circular(12)
                         ),
                       ),
                       onChanged: (value){
                         if(value.length ==1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       style: Theme.of(context).textTheme.bodyMedium,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,],

                     ),
                   ),
                   SizedBox(
                     height: 42,
                     width: 42,
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                               color: Color(0xff074452),
                               width: 2,
                             ),
                             borderRadius: BorderRadius.circular(12)
                         ),
                       ),
                       onChanged: (value){
                         if(value.length ==1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       style: Theme.of(context).textTheme.bodyMedium,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,],

                     ),
                   ),
                   SizedBox(
                     height: 42,
                     width: 42,
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                               color: Color(0xff074452),
                               width: 2,
                             ),
                             borderRadius: BorderRadius.circular(12)
                         ),
                       ),
                       onChanged: (value){
                         if(value.length ==1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       style: Theme.of(context).textTheme.bodyMedium,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,],

                     ),
                   ),
                   SizedBox(
                     height: 42,
                     width: 42,
                     child: TextFormField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                             borderSide: const BorderSide(
                               color: Color(0xff074452),
                               width: 2,
                             ),
                             borderRadius: BorderRadius.circular(12)
                         ),
                       ),
                       onChanged: (value){
                         if(value.length ==1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       style: Theme.of(context).textTheme.bodyMedium,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,],

                     ),
                   ),
                 ],
               ),
             ),




             const SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text("Don’t have an account?",  style: TextStyle(
                   fontSize: 16, color:  Colors.grey, fontWeight: FontWeight.normal, fontStyle: FontStyle.normal,
                 ),),
                 TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const about()));
                 },

                     child: TextButton(
                       child: const Text('Sign Up',
                         style: TextStyle(
                           color: Color(0xff35C2C1),
                           fontSize: 16
                         ),
                           ),
                       onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const SignUpScreen() )));

                       },
                     )),



               ],
             ),
             const SizedBox(height: 25,),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 decoration: const BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       color: Color(0x4c074452),
                       offset: Offset(5, 6),
                       blurRadius: 11,
                     ),
                   ],
                 ),
                 child: defaultButton(width: 350,height: 50, background: const Color(0xff074452),

                   text: 'Confirm',
                   function: (){

                       Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Verification3() )));

                     }
                   ),
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }

}