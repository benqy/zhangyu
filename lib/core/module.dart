

import 'package:flutter/widgets.dart';
import 'package:zhangyu/core/route_info.dart';

@immutable
abstract class Module{
  late final List<Module> modules = [];
  late final List<RouteInfo> routes = [];
}