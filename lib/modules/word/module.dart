import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/modules/word/index/view.dart';
import 'package:zhangyu/stores/sentenceStore.dart';

class WordModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => SentenceStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => WordIndexView()),
  ];

}