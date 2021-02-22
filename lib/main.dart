
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/components/ocr.dart';
import 'app_module.dart';
import 'app_widget.dart';

void main() {
  OCR.initToken();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));  
}