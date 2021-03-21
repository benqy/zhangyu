import 'package:get/get.dart';

import 'core/route_info.dart';



class AppRoutes {
  ///拍图识字首页
  static RouteInfo word = RouteInfo('/word');
  ///文字详情页
  static RouteInfo wordDetail = RouteInfo('/:char/detail', parent: word);
  ///拍图识物首页
  static RouteInfo classify = RouteInfo('/classify');
}