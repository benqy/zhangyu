
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/components/ocr.dart';
import 'package:zhangyu/stores/main_store.dart';
import 'modules/app/module.dart';
import 'modules/app/view.dart';

void main() {
  OCR.initToken();
  Provider.debugCheckInvalidValueType = null;

  runApp(ModularApp(
    module: AppModule(), 
    child: MultiProvider(
      providers:[
        Provider<MainStore>(create:(_)=>MainStore()),
      ],
      child: AppView()
    )
  ));  
}