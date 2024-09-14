import 'package:eye_care/screens/setting_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils.dart';
import 'EyeCubit.dart';
import 'EyeStates.dart';


class Favorite extends StatelessWidget{
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EyeCubit,EyeStates>(
      listener: (context,state){},
      builder:(context,state){
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xff074452),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => setting_user() )));
              },
            ),
            title:  Padding(
              padding: const EdgeInsets.only(
                  left: 55
              ),
              child: Text(
                'Favorite',
                style: SafeGoogleFont (
                  'Literata',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  //height: 1.2*ffem/fem,
                  color: const Color(0xff074452),
                ),
              ),
            ),
            actions: [
              IconButton(onPressed: (){},
                  icon: const Icon(
                    Icons.favorite,
                  ))
            ],
          ),
        );      } ,

    );
  }}