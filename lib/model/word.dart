class Word {
  final String hanzi;
  final String pinyin;
  Word(this.hanzi, this.pinyin);

  bool get isHanzi{
    return pinyin!= null && pinyin.isNotEmpty;
  }
}
