
class RouteInfo {
  List<RouteInfo> child = [];
  String declare = '';
  String get value{
    return declare;
  }
}

class AppRoutes {
  static String word = '/word';
  static String wordDetail = '/word/:char';
  static String classify = '/classify';
}