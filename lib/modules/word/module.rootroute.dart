// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RouteWriteGenerator
// **************************************************************************

import 'package:zhangyu/core/route_info.dart';
import 'package:zhangyu/modules/classify/module.dart' as _classify;
import 'package:zhangyu/modules/word/module.dart' as _word;
import 'package:zhangyu/modules/word/module.dart' as _wordDetail;

class AppRoutes {
  /// 拍图识物首页
  static RouteInfo classify = _classify.classify;

  /// 文字
  static RouteInfo word = _word.word;

  /// 文字详情页
  static RouteInfo wordDetail = _wordDetail.wordDetail;

  static List<RouteInfo> routes = [
    _classify.classify,
    _word.word,
    _wordDetail.wordDetail,
  ];
}
