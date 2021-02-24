import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/modules/classify/module.dart';
import 'package:zhangyu/modules/word/module.dart';
import 'package:zhangyu/routes.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(AppRoutes.word.routeName, module: WordModule()),
    ModuleRoute(AppRoutes.classify.routeName, module: ClassifyModule()),
  ];

}