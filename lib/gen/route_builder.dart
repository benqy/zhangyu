import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';
import 'package:zhangyu/gen/route_gen.dart';

Builder routeWriteBuilder(BuilderOptions options) =>
    LibraryBuilder(RouteWriteGenerator(), generatedExtension: '.rootroute.dart');

Builder routeBuilder(BuilderOptions options) =>
    LibraryBuilder(RouteGenerator(), generatedExtension: '.route.dart');