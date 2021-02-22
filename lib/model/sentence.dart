import 'package:zhangyu/model/word.dart';

class Sentence {
  final List<Word> words;
  Sentence(this.words);

  String get value {
    return this.words.map<String>((e) => e.hanzi).join('');
  }
}