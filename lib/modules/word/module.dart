// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:provider/provider.dart';
// import 'package:zhangyu/modules/word/detail/view.dart';
// import 'package:zhangyu/modules/word/index/controller.dart';
// import 'package:zhangyu/modules/word/index/view.dart';
// import 'package:zhangyu/routes.dart';
// import 'package:zhangyu/stores/sentence_store.dart';
// import 'package:zhangyu/stores/word_store.dart';

// class WordModule extends Module {
//   @override
//   final List<Bind> binds = [Bind.factory((i) => WordStore())];

//   @override
//   final List<ModularRoute> routes = [
//     ChildRoute('/',
//         child: (_, args) => MultiProvider(providers: [
//               ChangeNotifierProvider<SentenceStore>(
//                   create: (_) => SentenceStore()),
//               ChangeNotifierProvider<WordController>(
//                   create: (_) => WordController()),
//             ], child: WordIndexView())),
//     ChildRoute(AppRoutes.wordDetail.routeName,
//         child: (_, args) => WordDetailView(args.params['char'])),
//   ];
// }
import 'package:zhangyu/core/route_info.dart';
import 'package:zhangyu/annotations/route_meta.dart';
import 'package:zhangyu/modules/word/detail/view.dart';
import 'package:zhangyu/modules/word/index/view.dart';

///文字首页
@RouteMeta()
@RootRouteMeta()
RouteInfo word = RouteInfo('/word', page: () => WordIndexView());

///文字详情页
@RouteMeta()
RouteInfo wordDetail =
    RouteInfo('/:char/detail', parent: word, page: () => WordDetailView());
