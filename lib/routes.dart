
import 'package:flutter_modular/flutter_modular.dart';

class RouteInfo {
  RouteInfo(this.routeName, {this.parent});
  final RouteInfo? parent;
  final String routeName;
  
  String get fullRouteName{
    if(parent != null){
      return parent!.routeName + routeName;
    } else {
      return routeName;
    }
  }

  String prepareToRegex(String url) {
    final newUrl = <String>[];
    for (var part in url.split('/')) {
      var url = part.contains(":") ? "(.*?)" : part;
      newUrl.add(url);
    }

    return newUrl.join("/");
  }

  String generalLink(Map<String,dynamic> args){
    var url = '';
    if(parent != null) {
      url += parent!.generalLink(args);
    }
    print(url);
    if (routeName.contains('/:')) {
      final routeParts = routeName.split('/').where((element) => element.isNotEmpty);
      for(var routePart in routeParts){
        if(routePart.contains(':')){
          var partName = routePart.replaceFirst(':', '');
          if(args[partName] == null || args[partName].toString().isEmpty){
            throw Exception("""
              路由$fullRouteName的参数: $partName 未赋值
              示例:
                pushNamed(urlArgs:{'$partName': 1})
            """);
          }
          else {
            url += '/${args[partName]}';
          }
        }
        else{
          url += '/$routePart';
        }
      }
      // final regExp = RegExp("^${prepareToRegex(routeName)}\$",caseSensitive: true);
      // var r = regExp.firstMatch(fullRouteName);
      // print(r);
    }
    else {
      url+=routeName;
    }
    return url;
  }

  void pushNamed({Map<String,dynamic> urlArgs = const {}, Object? data, bool forRoot = false}) {
    var realLink = generalLink(urlArgs);
    print(realLink);
    Modular.to.pushNamed(realLink, arguments:data, forRoot: forRoot);
  }
}

class AppRoutes {
  ///拍图识字首页
  static RouteInfo word = RouteInfo('/word');
  ///文字详情页
  static RouteInfo wordDetail = RouteInfo('/:char/detail', parent: word);
  ///拍图识物首页
  static RouteInfo classify = RouteInfo('/classify');
}