import 'package:flutter/widgets.dart';

class WordStore with ChangeNotifier{
  String word = '比';

  void setWord(str) {
    word = str;
    notifyListeners();
  }
}