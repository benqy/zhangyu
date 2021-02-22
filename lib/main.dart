
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/components/ocr.dart';
import 'package:zhangyu/stores/sentenceStore.dart';
import 'modules/app/module.dart';
import 'modules/app/view.dart';

void main() {
  OCR.initToken();
  runApp(ModularApp(module: AppModule(), child: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SentenceStore()),
      ],
    child:AppView())));  
}