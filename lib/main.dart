
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/components/ocr.dart';
import 'modules/app/view.dart';

void main() {
  OCR.initToken();
  Provider.debugCheckInvalidValueType = null;

  runApp(AppView());  
}