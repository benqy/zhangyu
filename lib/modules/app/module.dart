import 'package:zhangyu/core/module.dart';
import 'package:zhangyu/core/route_info.dart';
import 'package:zhangyu/core/route_meta.dart';
import 'package:zhangyu/modules/word/module.dart';

@RouteMeta('home', '首页')
class AppModule extends Module {

  @override
  final List<RouteInfo> routes = [
    // ModuleRoute(AppRoutes.word.routeName, module: WordModule()),
    // ModuleRoute(AppRoutes.classify.routeName, module: ClassifyModule()),
    word
  ];  
  
}
