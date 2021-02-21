import 'package:flutter/material.dart';
import 'package:zhangyu/components/ocr.dart';
import 'package:zhangyu/theme/theme.dart';

import 'modules/home/index.dart';

void main() {
  OCR.initToken();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: Home(),
    );
  }
}
