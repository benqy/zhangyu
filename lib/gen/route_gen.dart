import 'package:source_gen/source_gen.dart';
import 'package:zhangyu/core/route_meta.dart';
import 'package:analyzer/dart/element/element.dart';

class RouteGenerator extends GeneratorForAnnotation<RouteMeta> {

  @override
  dynamic generateForAnnotatedElement(Element element, _, __) async {
    var name = _.read('name').stringValue;
    var text = _.read('text').stringValue;
    var path = __.inputId.uri;
    // var lib = await __.inputLibrary;
    // print(lib.exportNamespace); 
    return '''
  import 'package:zhangyu/core/route_info.dart';
import '$path';

class AppRoutes {
  /// $text
  static RouteInfo $name = $name;
}
    ''';
  }
}