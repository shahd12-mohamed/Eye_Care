


// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eye_care/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'EyeRegisterState.dart';

class EyeRegisterCubit extends Cubit<EyeRegisterStates>{
  EyeRegisterCubit() : super(EyeRegisterInitialState());


  static EyeRegisterCubit get(context)=>BlocProvider.of(context);
    void userRegister({
    required String email,
    required String password,
      required String confirmPassword,
    required String name,
    required String phone,
    required String age,
      required String userType,
  }) async{
      emit(EyeRegisterLoadingState());

     await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password).then((value) {
            print(value.user!.email);
            print(value.user!.uid);

            userCreate(email: email, name: name, phone: phone, age: age, uid: value.user!.uid,
              userType: userType,

                 );
            //emit(EyeRegisterSuccessState());
      }).catchError((error){
        print(error.toString());
        emit(EyeRegisterErrorState(error.toString()));
      });

    }

    void userCreate({
  required String email,
  required String name,
  required String phone,
  required String age,
      required String uid,
      required String userType,

  }
){
      UserModel model = UserModel(
        name:name,
        phone:phone,
        email:email,
        age:age,
        uid:uid,
        userType: userType,
         // isEmailVerified: ,

      );
   FirebaseFirestore.instance.collection('users').doc(uid).set(model.toMap()).then((value) {
      emit(EyeCreateUserSuccessState(userType));
   }).catchError((error){
     if (kDebugMode) {
       print(error.toString());
     }
     emit(EyeCreateUserErrorState(error.toString()));
   });
    }


      IconData suffix = Icons.visibility_off_sharp;
      IconData suffix2 = Icons.visibility_off_sharp;
      bool isPasswordShown = false;
      bool isPasswordShown2 = false;
      void changPasswordVisibility() {
        isPasswordShown = !isPasswordShown;
        suffix =
        isPasswordShown ? Icons.visibility_off_sharp : Icons.visibility_sharp;

        emit(RegisterChangePasswordState());
      }

      void ChangPasswordVisibility2() {
        isPasswordShown2 = !isPasswordShown2;
        suffix2 =
        isPasswordShown ? Icons.visibility_off_sharp : Icons.visibility_sharp;

        emit(RegisterChangePassword2State());
      }

  Object? valueChoose;
     void isdoctor(Object? neww){
       valueChoose=neww;
        emit(EyeIsDoctorState());
      }
    }