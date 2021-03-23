import 'package:zhangyu/core/route_info.dart';
import 'package:zhangyu/annotations/route_meta.dart';

import 'index/view.dart';

///拍图识物首页
@RouteMeta()
RouteInfo classify = RouteInfo('/classify',page: () => ClassifyIndexView());