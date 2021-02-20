import 'package:flutter/material.dart';
import 'package:zhangyu/constants/constants.dart';



final appTheme = ThemeData(
  primarySwatch: Colors.yellow,  //FFCD00
  textTheme: TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: Constants.mainFontColor,
    displayColor: Constants.mainFontColor
  ),
  pageTransitionsTheme: PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder()
    }
  )
);