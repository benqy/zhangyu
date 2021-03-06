import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/modules/word/detail/view.dart';
import 'package:zhangyu/modules/word/index/controller.dart';
import 'package:zhangyu/modules/word/index/view.dart';
import 'package:zhangyu/routes.dart';
import 'package:zhangyu/stores/sentence_store.dart';
import 'package:zhangyu/stores/word_store.dart';

class WordModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => WordStore())];

  @override
  final List<ModularRouter> routers = [
    ModularRouter('/',
        child: (_, args) => MultiProvider(providers: [
              ChangeNotifierProvider<SentenceStore>(
                  create: (_) => SentenceStore()),
              ChangeNotifierProvider<WordController>(
                  create: (_) => WordController()),
            ], child: WordIndexView())),
    ModularRouter(AppRoutes.wordDetail.routeName,
        child: (_, args) => WordDetailView(args.params['char'])),
  ];
}
