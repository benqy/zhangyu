import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/constants/constants.dart';
import 'package:zhangyu/routes.dart';
import 'package:zhangyu/theme/theme.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: appTheme,
      initialRoute: AppRoutes.word,
    ).modular();
  }
}