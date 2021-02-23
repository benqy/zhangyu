
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/components/ocr.dart';
import 'modules/app/module.dart';
import 'modules/app/view.dart';

void main() {
  OCR.initToken();
  runApp(ModularApp(
    module: AppModule(), 
    child: AppView()
  ));  
}