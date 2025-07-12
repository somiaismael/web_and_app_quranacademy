import 'package:brra/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      
 
      titleTextStyle: TextStyle(color: AppColor.primarycolor,fontSize: 25,fontFamily: "Cairo",fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: AppColor.primarycolor )

    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
       backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      bodySmall: TextStyle(
        height: 2,
        fontSize: 14,
      ),
    ),
    primarySwatch: Colors.blue);

ThemeData themeArabic = ThemeData(
    fontFamily: "Cairo",
        appBarTheme: AppBarTheme(
      color: AppColor.primarycolor,

    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
       backgroundColor: AppColor.primarycolor,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      bodySmall: TextStyle(
        height: 2,
        fontSize: 12,
      ),
    ),
    primarySwatch: Colors.blue);
