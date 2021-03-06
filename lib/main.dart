
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/components/ocr.dart';
import 'modules/app/module.dart';

void main() {
  OCR.initToken();
  Provider.debugCheckInvalidValueType = null;

  runApp(ModularApp(module: AppModule()));
}