import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/constants.dart';
import '../../../models/user_model.dart';
import 'EyeClinicalStates.dart';



class EyeClinicalCubit extends Cubit<EyeClinicalStates>{
  EyeClinicalCubit(): super(EyeClinicalInitialState());
  static EyeClinicalCubit get(context) => BlocProvider.of(context);

  UserModel? model;
  void getDoctorData(){
    emit(EyeClinicalLoadingState());
    FirebaseFirestore.instance
        .collection('user')
        .doc(uid)
        .get()
        .then((value) {
      print(value.data());

       model = UserModel.fromJson(value.data()!);
      print(model);
        emit(EyeClinicalSuccessState());


    }).catchError((error){
      print(error.toString());
      emit(EyeClinicalErrorState(error.toString()));
    });
}

}