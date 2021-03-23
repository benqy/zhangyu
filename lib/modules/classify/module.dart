import 'package:zhangyu/core/route_info.dart';
import 'package:zhangyu/annotations/route_meta.dart';

import 'index/view.dart';

@RouteMeta('拍图识物首页')
RouteInfo classify = RouteInfo('/classify',page: () => ClassifyIndexView());