
import 'dart:io' as io;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'EyeUploadStates.dart';


late List _outputs;
late io.File _image;
bool _loading = false;
late List<dynamic> _recognitions;
late Interpreter _interpreter;
class EyeUploadCubit extends Cubit<EyeUploadStates> {
  EyeUploadCubit() : super(EyeUploadInitialStates());

  static EyeUploadCubit get(context)=>BlocProvider.of(context);



  void initialize() {
    _loading = true;
    emit(EyeUploadLoadingStates());

    loadModel().then((value) {
      _loading = false;
     // loadModel();
      emit(EyeUploadLoadedStates());
    });
  }

  Future<void> loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('images/model_unquant.tflite');
    } catch (e) {
      print('Error loading model: $e');
    }
  }



 // @override
  //Future<void> dispose() {
    //Tflite.close();
    //return super.close();
  //}



}