


import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils.dart';


Widget CustomButton({
  required Function? Function() onpressed,
  required Color c,
  required String text,

})=>
    ElevatedButton(onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 60), backgroundColor: c,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),

        ),


        shadowColor: const Color(0x4c074452),

        elevation: 4.0,

      ),

      child: Text(
      text,
      textAlign: TextAlign.center,
      style: SafeGoogleFont (
        'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        //height: 1.2*ffem/fem,
        color: const Color(0xffffffff),
      ),
    ),

    );


Widget SmallButton({
  required Function? Function() onpressed,
  required Color c,
  required String text,

})=>ElevatedButton(onPressed: onpressed,
  style: ElevatedButton.styleFrom(
    fixedSize: const Size(100, 10), backgroundColor: c,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),

    ),


    shadowColor: const Color(0x4c074452),

    elevation: 4.0,

  ),

  child: Text(
    text,
    textAlign: TextAlign.center,
    style: SafeGoogleFont (
      'Poppins',
      fontSize: 12,
      fontWeight: FontWeight.w700,
      //height: 1.2*ffem/fem,
      color: const Color(0xffffffff),
    ),
  ),
);

Widget MyText({
  required String text,
  required double font,
  required Color c,
})=>
    Text(

  text,
  //textAlign: TextAlign.right,
  style: SafeGoogleFont (
    'Literata',
    fontSize: font,
    fontWeight: FontWeight.w700,

    color: c,

  ),
);


Widget CustomContainer({
  required Function? Function() onpressed,
  required Function? Function() onpresed,
  required Color c,
  required Color colContainer,
  required Color co,
})=>Padding(
  padding: const EdgeInsets.all(10.0),
  child: Container(

    decoration: BoxDecoration(
        color: colContainer,
        borderRadius: BorderRadius.circular(10)
    ),

    width:376.55,
    height: 160,
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text('Patient name :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),


              const Text('Mohamed Ahmed',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
              const Spacer(),
              SizedBox(
                height:25,
                width: 50,
                child: ElevatedButton(onPressed: onpressed,

                  child: const Icon(Icons.close,
                    size: 15,),

                  style: ElevatedButton.styleFrom(
                    //fixedSize: Size(0.5, 5),

                    shape:
                    const CircleBorder(), backgroundColor: c,

                    shadowColor: const Color(0x4c074452),

                    elevation: 4.0,

                  ),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Text('Date :',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),


              Text('19-2-2024',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
            ],
          ),
          const SizedBox(height: 8,),
          const Row(
            children: [
              Text('Time : ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),


              Text('15.00 PM',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
            ],
          ),
          const SizedBox(height: 8,),
          SmallButton(onpressed: onpresed, c:const Color(0xff074452),text: 'Write Report')
        ],
      ),
    ),
  ),
);


Widget DoctorBox({
  required String DrName,
  required String DrImage,
  required String phone,
})=>Container(

  decoration: BoxDecoration(
      color: const Color.fromARGB(255, 222, 243, 240),
      borderRadius: BorderRadius.circular(10)
  ),

  width:376.55,
  height: 161.87,
  child: Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset("images/$DrImage",
              height:153.12,
              width:135.38 ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Text(DrName,
                  style: SafeGoogleFont (
                    'Literata',
                    fontSize: 16,
                    //fontWeight: FontWeight.w700,
                    //height: 1*ffem/fem,
                    //letterSpacing: -0.48*fem,
                    color: const Color(0xff074452),
                  ),),
                const SizedBox(width: 70,),

                IconButton(onPressed: (){},
                    icon: const Icon(Icons.favorite_outline),color: const Color(0xff074452))
              ],
            ),
            const SizedBox(height: 1,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Ophthalmologists',
                  style: SafeGoogleFont (
                    'Literata',
                    fontSize: 11,
                    //fontWeight: FontWeight.w700,
                    //height: 1*ffem/fem,
                    //letterSpacing: -0.48*fem,
                    color: const Color(0xff074452),
                  ),),

                Text(phone,
                  style: SafeGoogleFont (
                    'Literata',
                    fontSize: 11,
                    //fontWeight: FontWeight.w700,
                    //height: 1*ffem/fem,
                    //letterSpacing: -0.48*fem,
                    color: const Color(0xff074452),
                  ),),

                Text('Fayoum',
                  style: SafeGoogleFont (
                    'Literata',
                    fontSize: 11,
                    //fontWeight: FontWeight.w700,
                    //height: 1*ffem/fem,
                    //letterSpacing: -0.48*fem,
                    color: const Color(0xff074452),
                  ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              children: [


                SmallButton(onpressed: (){}, c: const Color(0xff074452), text: 'View'),
                const SizedBox(width: 50,),
                const Icon(Icons.star,
                  color: Colors.amber,),
                const Text('5',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff074452)
                  ),)
              ],
            )
          ],
        )
      ]

  ),
);

Widget taskssBuilder({
  required List<dynamic>task,
})=>ConditionalBuilder(
  condition: task.isNotEmpty,
  builder: (context)=>ListView.separated(

      itemBuilder: (context, index) {
        //print('tasks status ${tasks[index]['status']}');

        return buildTaskItem(task[index], context);
      },

      separatorBuilder: (context, index) => Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[300],
      ),
      itemCount: task.length),
  fallback: (context) => const Center(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            Icons.menu,
            size:100 ,
            color: Colors.grey,

          ),
          Text('No Doctors yet, please add some tasks',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),),

        ],
      ),
    ),
  ),
);

Widget buildTaskItem(Map model,context) =>
    Dismissible(
      key: Key(model['id'].toString()),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          DoctorBox(DrName: '${model['title']}', DrImage: 'istockphoto-138205019-612x612-removebg-preview-1.png', phone: '${model['phone']}'),
         //EyeCubit.get(context).GetDataFromdatabase(EyeCubit.get(context).database),

        ],
      ),


    );