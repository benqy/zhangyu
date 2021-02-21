import 'package:lpinyin/lpinyin.dart';
import 'package:zhangyu/model/word.dart';

class Pinyin {
  
  // static Sentence getPinyin(str) {
  //   var result = PinyinHelper.getPinyin(str,separator: ',', format:PinyinFormat.WITH_TONE_MARK);
  //   print(result);
  //   var pinyins = result.split(',');
  //   Sentence sentence = Sentence([Word('天','tian')]);
  //   return sentence;
  // }

  static Word getPinyinByWord(String hanzi) {
    var result = PinyinHelper.convertCharToPinyinArray(hanzi);
    var pinyin = result.length == 0? '' : result[0];
    return Word(hanzi,pinyin);
  }
}