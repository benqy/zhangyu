import 'package:source_gen/source_gen.dart';
import 'package:zhangyu/annotations/route_meta.dart';
import 'package:analyzer/dart/element/element.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
class RouteGenerator extends GeneratorForAnnotation<RouteMeta> {

  static String codeImports = '''
import 'package:zhangyu/core/route_info.dart';
''';
  static String codeMembers = '';
  static String codeRouteList = '';

  @override
  dynamic generateForAnnotatedElement(Element element, _, __) {
    // print("当前输入源： ${__.inputId.toString()}  被拦截到的元素： ${element.name} 注解值：}");
    var name = element.name;
    var text = _.read('text').stringValue;
    var path = __.inputId.uri;
    // var lib = await __.inputLibrary;
    // print(lib.exportNamespace); 
    codeImports += '''
import '$path' as _$name;
''';

    codeMembers += '''
  /// $text
  static RouteInfo $name = _$name.$name;
''';
    
    codeRouteList  += '''
_$name.$name,
''';
    return null;
  }
}

class RouteWriteGenerator extends GeneratorForAnnotation<RootRouteMeta>  {
  @override
  dynamic generateForAnnotatedElement(Element element, _, __) async {
    // __.findAssets(glob)
    // var dir = await  __.findAssets(Glob('**/*.route1.dart')).first;
    // __.writeAsString(dir, '3234234');
    var name = element.name;

    return '''
${RouteGenerator.codeImports}

class AppRoutes {
  ${RouteGenerator.codeMembers}

  static RouteInfo root = _$name.$name;

  static List<RouteInfo> routes = [
    ${RouteGenerator.codeRouteList}
  ];
}
''';
  }  
}