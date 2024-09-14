import 'package:eye_care/screens/EyeCubit.dart';
import 'package:eye_care/screens/EyeStates.dart';
import 'package:eye_care/screens/clinical/clinical1.dart';
import 'package:eye_care/screens/clinical/cubit/EyeClinicalCubit.dart';
import 'package:eye_care/screens/login/signinEyeCare.dart';
import 'package:eye_care/screens/upload/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc_observer.dart';
import 'core/components/constants.dart';
import 'core/network/local/cache_helper.dart';
import 'core/network/remote/dio_helper.dart';
import 'core/styles/themes.dart';
import 'screens/register/create-new-password-xvS.dart';




Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  //await Firebase.initializeApp(
  //options: DefaultFirebaseOptions.currentPlatform,
  //);
  bool? isDark= CacheHelper.getBoolean(key: 'isDark');
  //bool? onBoarding= CacheHelper.getData(key: 'onBoarding');
  late Widget widget;
  //String? token= CacheHelper.getData(key: 'token');
  uid= CacheHelper.getData(key: 'uid');

  var userTypeString =  CacheHelper.getData(key: 'userType');
  final userType = UserType.values.firstWhere((type) => type.toString() == userTypeString);
  if (userType == UserType.doctor) {
    widget=upload();
  } else if (userType == UserType.patient) {
    widget= const ClinicalScreen();
  }



  //future: Firebase.initializeApp();

  runApp(MyApp(isDark: isDark!,startWidget: widget));

}

class MyApp extends StatelessWidget{
  final bool? isDark;
  final Widget? startWidget;
  const MyApp({this.isDark,this.startWidget,super.key});
  @override
  Widget build(BuildContext context) {

    return  MultiBlocProvider(

      providers: [
        BlocProvider(create: (BuildContext context) => EyeCubit()..changeAppMode(fromShared: isDark,),),
        BlocProvider(create:(context)=> EyeClinicalCubit()..getDoctorData() ),
      ],
      child: BlocConsumer<EyeCubit,EyeStates>(
        listener: (context, state) {   },
        builder: (context, state) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: EyeCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,

            debugShowCheckedModeBanner: false,
            home: Directionality(
              textDirection: TextDirection.ltr,
              child: SigninEye(),
            ),



          );
        },

      ),
    );

  }


}
