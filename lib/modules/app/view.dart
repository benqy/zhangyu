import 'package:flutter/material.dart';
import 'package:zhangyu/constants/constants.dart';
import 'package:zhangyu/routes.dart';
import 'package:zhangyu/theme/theme.dart';
import 'package:get/get.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appName,
      theme: appTheme,
      initialRoute: AppRoutes.word.routeName,
    );
  }
}