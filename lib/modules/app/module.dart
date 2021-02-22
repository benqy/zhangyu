import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/modules/classify/module.dart';
import 'package:zhangyu/modules/word/module.dart';
import 'package:zhangyu/routes.dart';

class AppModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(AppRoutes.word, module: WordModule()),
    ModuleRoute(AppRoutes.classify, module: ClassifyModule()),
  ];

}