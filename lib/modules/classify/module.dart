import 'package:flutter_modular/flutter_modular.dart';
import 'index/view.dart';

class ClassifyModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ClassifyIndexView()),
  ];

}