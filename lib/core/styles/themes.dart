

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils.dart';


ThemeData darkTheme =ThemeData(
  primarySwatch: Colors.teal,
  // primarySwatch: Colors.deepOrange,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0x000517ab),
    elevation: 0,
    titleSpacing: 20.0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0x000517ab) ,
      statusBarIconBrightness: Brightness.light,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 22,
    ),
  ),

  colorScheme: const ColorScheme(brightness: Brightness.dark,
    onBackground: Colors.white,
    onSurface: Colors.white,
    primary: Colors.red,
    secondary: Colors.white,
    surface: Colors.pink,
    onSecondary: Colors.white,
    error: Colors.black,
    onError: Colors.white, onPrimary: Colors.white, background: Colors.blue,




  ),
  popupMenuTheme: const PopupMenuThemeData(
      color: Colors.grey,

      elevation: 2
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.white,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type:BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    elevation: 20,
    backgroundColor: Color(0x000517ab),
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyMedium: SafeGoogleFont (
      'Literata',
      fontSize: 16,
      fontWeight: FontWeight.w700,
      //height: 1*ffem/fem,
      //letterSpacing: -0.48*fem,
      color: Colors.white,
    ),
  ),
  iconTheme: const IconThemeData(
      color: Colors.white
  ),
  scaffoldBackgroundColor: const Color(0x000517ab),
  primaryColor: Colors.deepOrange,
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
  ),


);


ThemeData lightTheme= ThemeData(
  // primarySwatch: Colors.deepOrange,
  // primarySwatch: Colors.deepOrange,
  appBarTheme:  const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    titleSpacing: 20.0,

    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    //backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type:BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    elevation: 20,
    backgroundColor: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.white,
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
  ),
  //switchTheme: SwitchThemeData(
   // thumbColor: MaterialStateProperty.all(
      //  EyeCubit.get(context).isDark ? Colors.orange : Colors.purple),
  //),
  iconTheme: const IconThemeData(
      color: Color(0xff074552)
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    bodyMedium: SafeGoogleFont (
      'Literata',
      fontSize: 16,
      fontWeight: FontWeight.w700,
      //height: 1*ffem/fem,
      //letterSpacing: -0.48*fem,
      color: const Color(0xff074452),
    ),


  ),
);