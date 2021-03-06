import 'package:flutter_modular/flutter_modular.dart';
import 'index/view.dart';

class ClassifyModule extends ChildModule {

  @override
  List<Bind> get binds  => [
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter('/', child: (_, args) => ClassifyIndexView()),
  ];

}