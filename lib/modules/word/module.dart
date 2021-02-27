import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/modules/word/detail/view.dart';
import 'package:zhangyu/modules/word/index/controller.dart';
import 'package:zhangyu/modules/word/index/view.dart';
import 'package:zhangyu/routes.dart';
import 'package:zhangyu/stores/sentenceStore.dart';
import 'package:zhangyu/stores/wordStore.dart';

class WordModule extends Module {
  @override
  final List<Bind> binds = [Bind.factory((i) => WordStore())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => MultiProvider(providers: [
              ChangeNotifierProvider<SentenceStore>(
                  create: (_) => SentenceStore()),
              ChangeNotifierProvider<WordController>(
                  create: (_) => WordController()),
            ], child: WordIndexView())),
    ChildRoute(AppRoutes.wordDetail.routeName,
        child: (_, args) => WordDetailView(args!.params['char'])),
  ];
}
