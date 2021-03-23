import 'package:source_gen/source_gen.dart';
import 'package:zhangyu/annotations/route_meta.dart';
import 'package:analyzer/dart/element/element.dart';

//flutter pub run build_runner build --delete-conflicting-outputs
class RouteGenerator extends GeneratorForAnnotation<RouteMeta> {

  static String codeImports = '''
import 'package:zhangyu/core/route_info.dart';
import 'package:get/get.dart';
''';
  static String codeMembers = '';
  static String pageList = '';

  @override
  dynamic generateForAnnotatedElement(Element element, _, __) {
    // print("被拦截到的元素： ${element.documentationComment} 注解值：${e}");
    var name = element.name;
    var text = element.documentationComment;
    var path = __.inputId.uri;
    // var lib = await __.inputLibrary;
    // print(lib.exportNamespace); 
    codeImports += '''
import '$path' as _$name;
''';

    codeMembers += '''
  $text
  static RouteInfo $name = _$name.$name;
''';
    
    pageList  += '''
$name.getPage,
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

  static List<GetPage> pages = [
    ${RouteGenerator.pageList}
  ];
}
''';
  }  
}