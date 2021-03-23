// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RouteWriteGenerator
// **************************************************************************

import 'package:zhangyu/core/route_info.dart';
import 'package:get/get.dart';
import 'package:zhangyu/modules/word/module.dart' as _word;
import 'package:zhangyu/modules/word/module.dart' as _wordDetail;
import 'package:zhangyu/modules/classify/module.dart' as _classify;

class AppRoutes {
  /// 文字
  static RouteInfo word = _word.word;

  /// 文字详情页
  static RouteInfo wordDetail = _wordDetail.wordDetail;

  /// 拍图识物首页
  static RouteInfo classify = _classify.classify;

  static RouteInfo root = _word.word;

  static List<GetPage> pages = [
    word.getPage,
    wordDetail.getPage,
    classify.getPage,
  ];
}
