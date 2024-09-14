
import 'package:eye_care/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils.dart';
import 'EyeCubit.dart';
import 'EyeStates.dart';
import 'ShareEye.dart';


class History extends StatelessWidget{
  const History({super.key});

  @override
  Widget build(BuildContext context) {
  return BlocProvider(
    create: (BuildContext context  )=>EyeCubit(),
    child: BlocConsumer<EyeCubit,EyeStates>(
      listener: (context,state){},
      builder: (context,state){
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => profile() )));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              title: Center(
                child: Text(
                  'History',
                  style: SafeGoogleFont (
                    'Literata',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    //height: 1.2*ffem/fem,
                    //color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).brightness == Brightness.light ? const Color.fromARGB(255, 222, 243, 240):const Color(0xff808080) ,
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3-1.png',
                      height: 150,
                      width: 130,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('Dr.Ali Ahmed',
                            style: SafeGoogleFont (
                              'Literata',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              //height: 1.2*ffem/fem,
                              //color: Color(0xffffffff),
                            ),),
                        ),
                        Row(
                          children: [
                            Text('Date: ',
                              style: SafeGoogleFont (
                                'Literata',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                //height: 1.2*ffem/fem,
                                //color: Color(0xffffffff),
                              ),),
                            Text('22-2-2024',
                              style: SafeGoogleFont (
                                'Literata',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                //height: 1.2*ffem/fem,
                                //color: Color(0xffffffff),
                              ),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        SmallButton(onpressed: (){
                          EyeCubit.get(context).ChangeButtonupload();
                        }, c: EyeCubit.get(context).isloged3?const Color(0xff808080):const Color(0xff074452), text: 'View')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },

    ),
  );
  }

}