import 'package:flutter/widgets.dart';

class MainStore with ChangeNotifier {
  String name = 'main';

  void change(){
    name = 'change main';
    notifyListeners();
  }
}