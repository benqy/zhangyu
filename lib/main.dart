// @dart=2.9

import 'package:flutter/material.dart';
import 'package:zhangyu/components/ocr.dart';
import 'modules/app/view.dart';

void main() {
  OCR.initToken();
  runApp(AppView());  
}