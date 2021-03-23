import 'package:get/get.dart';
import 'package:zhangyu/stores/sentence_store.dart';

class WordController extends GetxController {
  WordController(){
    print('init word controller');
  }
  SentenceStore store = SentenceStore();
}