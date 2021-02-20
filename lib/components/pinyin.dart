import 'package:lpinyin/lpinyin.dart';

class Pinyin {
  
  static String getPinyin(str) {
    var result = PinyinHelper.getPinyin(str,separator: '  ', format:PinyinFormat.WITH_TONE_MARK);
    print(str);
    return result;
  }
}