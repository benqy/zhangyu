import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/modules/word/detail/view.dart';
import 'package:zhangyu/modules/word/index/view.dart';
import 'package:zhangyu/routes.dart';
import 'package:zhangyu/stores/sentenceStore.dart';

class WordModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.factory((i) => SentenceStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChangeNotifierProvider(
        create: (_) => SentenceStore(),
        child: WordIndexView()
      )
    ),
    ChildRoute(AppRoutes.wordDetail, child: (_, args) => ChangeNotifierProvider(
        create: (_) => SentenceStore(),
        child: WordDetailView()
      )
    ),    
  ];

}