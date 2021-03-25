import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zhangyu/components/ocr.dart';
import 'package:zhangyu/components/pinyin.dart';
import 'package:zhangyu/model/sentence.dart';
import 'package:zhangyu/model/word.dart';

class SentenceStore with ChangeNotifier{
  List<Sentence> lists = [];

  void reset(){
    lists = [];
  }

  Future<void> generalBasic({ImageSource source = ImageSource.gallery}) async {
    var strs = await OCR.generalBasic(source:source);
    print(strs);
    strs.forEach((str) {
      var chars = str.split('');
      List<Word> words = [];
      chars.forEach((char) {
        words.add(Pinyin.getPinyinByWord(char));
      });
      lists.add(Sentence(words));
    });
    print(lists);
    notifyListeners();
  }
  
}