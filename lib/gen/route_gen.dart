import 'package:source_gen/source_gen.dart';
import 'package:zhangyu/core/route_meta.dart';
import 'package:analyzer/dart/element/element.dart';

class RouteGenerator extends GeneratorForAnnotation<RouteMeta> {

  @override
  dynamic generateForAnnotatedElement(Element element, _, __) async {
    print("当前输入源： ${__.inputId.toString()}  被拦截到的元素： ${element.name} 注解值： ${_.read("name").stringValue}");

    var name = _.read('name').stringValue;
    var text = _.read('text').stringValue;
    var path = __.inputId.uri;
    // var lib = await __.inputLibrary;
    // print(lib.exportNamespace); 
    return '''
import 'package:zhangyu/core/route_info.dart';
import '$path' as _$name;

class AppRoutes {
  /// $text
  static RouteInfo $name = _$name.$name;
}
    ''';
  }
}