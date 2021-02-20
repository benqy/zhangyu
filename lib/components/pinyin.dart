import 'package:lpinyin/lpinyin.dart';

class Pinyin {
  
  static String getPinyin() {
    var str = PinyinHelper.getPinyin('毛主席',separator: '|', format:PinyinFormat.WITH_TONE_MARK);
    print(str);
    return str;
  }
}