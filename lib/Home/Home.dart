import 'package:flutter/material.dart';
import 'package:zhangyu/components/ocr.dart';
import 'package:zhangyu/components/pinyin.dart';
import 'package:zhangyu/components/tts.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () async {
            text = await OCR.generalBasic();
            var pinyin = Pinyin.getPinyin(text);
            print(pinyin);
            Speaker.speak(text);
            setState(() {
                          
                        });
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(15,100,15,0),
            child: Text(text),
            height: 300,
            color: Colors.blue,
            width: double.infinity,
          )),
    );
  }
}
