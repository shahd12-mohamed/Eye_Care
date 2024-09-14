import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sqflite/sqflite.dart';
import '../core/network/local/cache_helper.dart';
import 'EyeStates.dart';

class EyeCubit extends Cubit<EyeStates> {
  EyeCubit() :super(EyeInitialImageState());

  static EyeCubit get(context) => BlocProvider.of(context);

  bool isDark = false;
  bool isLight = false;
  bool isloged = false;
  bool isloged2 = false;
  bool isloged3 = false;
  bool islog = false;
  bool isPasswordShow = true;
  bool isPasswordShow2 = true;

  //Uint8List? _image;
  bool? isDoctor;
  bool isChecked = false;
  late Database database;
  List<dynamic> newtasks = [];

  bool appointment1 = false;
  bool appointment2 = false;
  bool appointment3 = false;
  bool appointment4 = false;
  bool appointment5 = false;
  bool appointment6 = false;
  bool appointment7 = false;

  void ChangeButtonyes() {
    isloged = !isloged;

    emit(EyeChangeButtonyesState());
  }

  void ChangeButtonappoint1() {
    appointment1 = !appointment1;

    emit(EyeChangeButtonAppoint1State());
  }

  void ChangeButtonappoint2() {
    appointment2 = !appointment2;

    emit(EyeChangeButtonAppoint2State());
  }

  void ChangeButtonappoint3() {
    appointment3 = !appointment3;

    emit(EyeChangeButtonAppoint3State());
  }

  void ChangeButtonappoint4() {
    appointment4 = !appointment4;

    emit(EyeChangeButtonAppoint4State());
  }

  void ChangeButtonappoint5() {
    appointment5 = !appointment5;

    emit(EyeChangeButtonAppoint5State());
  }

  void ChangeButtonappoint6() {
    appointment6 = !appointment6;

    emit(EyeChangeButtonAppoint6State());
  }


  void ChangeButtonappoint7() {
    appointment7 = !appointment7;

    emit(EyeChangeButtonAppoint7State());
  }

  void ChangeButtonno() {
    isloged2 = !isloged2;
    emit(EyeChangeButtonnoState());
  }

  void ChangeButtonupload() {
    isloged3 = !isloged3;
    emit(EyeChangeButtonLogState());
  }

  void ChangeButtonLog() {
    islog = !islog;
    emit(EyeChangeButtonLogState());
  }

  void ChangeShowPassword1() {
    isPasswordShow = !isPasswordShow;

    emit(EyeChangePassword1State());
  }

  void ChangeShowPassword2() {
    isPasswordShow2 = !isPasswordShow2;

    emit(EyeChangePassword2State());
  }

  void ChangeRememberMe() {
    isChecked = !isChecked;

    emit(EyeChangeRememberMe());
  }

  //void ChangeAddImage()async{

  //Uint8List img = await PickImage(ImageSource.gallery);
  //_image = img;
  //emit(EyeChangeAddImage());
  //}

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> pickedImage() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
          source: ImageSource.gallery);
      if (pickedImage != null) {
        emit(EyeImageLoadingState(pickedImage.path));
      }
      else {
        emit(EyeImageErrorState('No Image selected'));
      }
    } catch (e) {
      emit(EyeImageErrorState(e.toString()));
    }
  }

  void reset() {
    emit(EyeInitialImageState());
  }



  ThemeMode appMode = ThemeMode.dark;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(EyeChangeModeState());
    }
    else {
      isDark = !isDark;
      isLight = !isLight;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
        emit(EyeChangeModeState());
      });
    }
  }

  void createDatabase() async
  {
    database = await openDatabase(
      'EyeCare.db',
      version: 1,
      onCreate: (database, version) async
      {
        print('Database created');
        await database.execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, phone TEXT , status TEXT)');
      },
      onOpen: (database) {
        GetDataFromdatabase(database);
        print('Database opend');
      },
    );
  }

  insertToDatabase({
    required String title,
    required String phone,

  }) async
  {
    await database.transaction((txn) async
    {
      txn.rawInsert(
          'INSERT INTO tasks(title,phone,status) VALUES("$title", "$phone","new")'
      ).then((value) {
        GetDataFromdatabase(database);
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());
      }).catchError((error) {
        print('Error when inserting new record ${error.toString()}');
      });
      return null;
    });
  }

   GetDataFromdatabase(database) async
  {
    emit(AppGetDatabaseLodingState());
    await database.rawQuery('SELECT * FROM tasks').then((value) {
      newtasks = value;
      print(newtasks);
      value.forEach((element) {
        print(element['id']);
        if (element['status'] == 'New') {
          newtasks.add(element);
        }
      });
      emit(AppGetDatabaseState());
    });
  }





  }



