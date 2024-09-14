
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'EyeLoginStates.dart';

class EyeLoginCubit extends Cubit<EyeLoginStates>{
  EyeLoginCubit() : super(EyeLoginInitialState());

  static EyeLoginCubit get(context)=>BlocProvider.of(context);
  void userLogin({
    required String email,
    required String password,
  }){
    emit(EyeLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password).then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      emit(EyeLoginSuccessState(value.user!.uid));
    }).catchError((error){
      emit(EyeLoginErrorState(error.toString()));
    });

  }
  IconData suffix =Icons.visibility_off_sharp;
  bool isPasswordShown=false;
  void changPasswordVisibility(){
    isPasswordShown = !isPasswordShown;
    suffix=isPasswordShown? Icons.visibility_off_sharp : Icons.visibility_sharp;

    emit(EyeLoginChangePasswordState());

  }


void initstates(){
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if(user ==null){
        print('=================================User is currently signed out!');
      }else{
        print('========================User is signed in!');
      }
    });

}
@override
  Future<void> close() {
    // Clean up resources if necessary
    return super.close();
  }




//bool switchValue=false;
//void changeAnimated(bool valuee){
 // switchValue=valuee;
//}




}