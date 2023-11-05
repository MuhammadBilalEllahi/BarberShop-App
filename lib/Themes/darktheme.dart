import 'package:flutter/material.dart';

const Color amberGold = Colors.amber;
const Color black = Colors.black;
const Color blackx = Color(0x001c1c1c);
const Color silver = Color(0xffD4DEDD);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
        fontFamily: 'RedRose',


  primaryColor: Colors.black38,
  colorScheme:  ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade800
  ),

  cardTheme: const CardTheme(
    color: Colors.black87, margin: EdgeInsets.all(10),
    
    ),

  drawerTheme: const DrawerThemeData(),

  // textButtonTheme: TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //       backgroundColor: Colors.transparent,
  //       textStyle: const TextStyle(
  //         color: Colors.white70
  //       )
  //   )
  //   ),

  appBarTheme: const AppBarTheme(
      color: Colors.black87,
      titleTextStyle: TextStyle(
          // fontFamily: ,
          color: Colors.white,
          fontSize: 20),
      actionsIconTheme: IconThemeData(color: Colors.white)),

  textTheme: const TextTheme(
    
      titleLarge: TextStyle(fontSize: 25),
      titleMedium: TextStyle(fontSize: 20),
      titleSmall: TextStyle(fontSize: 15)),

  iconTheme: IconThemeData(color: Colors.grey.shade600),

  // textButtonTheme: const TextButtonThemeData(
  //   style: ButtonStyle(
  //     textStyle: MaterialStatePropertyAll(
  //       TextStyle(color: Colors.white)
  //     )
  //   )
  // )
);
