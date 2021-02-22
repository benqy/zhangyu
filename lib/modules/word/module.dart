import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/modules/word/index/view.dart';

class WordModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => WordIndexView()),
  ];

}