import 'package:flutter/material.dart';
import 'package:zhangyu/components/ocr.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            OCR.generalBasic();
          },
          child: Container(
            child: Text('OCR Test'),
            height: 300,
            color: Colors.blue,
            width: double.infinity,
          )),
    );
  }
}
