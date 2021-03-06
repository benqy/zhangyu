import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/modules/app/view.dart';
import 'package:zhangyu/modules/classify/module.dart';
import 'package:zhangyu/modules/word/module.dart';
import 'package:zhangyu/routes.dart';
import 'package:zhangyu/stores/main_store.dart';

class AppModule extends MainModule {

  @override
  final List<Bind> binds = [
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(AppRoutes.word.routeName, module: WordModule()),
    ModularRouter(AppRoutes.classify.routeName, module: ClassifyModule()),
  ];


  @override
  Widget get bootstrap {
    return MultiProvider(
      providers:[
        Provider<MainStore>(create:(_)=>MainStore()),
      ],
      child: AppView()
    );
  }

}