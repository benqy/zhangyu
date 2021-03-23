import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zhangyu/stores/sentence_store.dart';

class WordController extends GetxController {
  WordController(){
    print('init word controller');
  }
  SentenceStore store = SentenceStore();
  
  wordFromGallery() => store.generalBasic(source: ImageSource.gallery);

  wordFromCamera() => store.generalBasic(source: ImageSource.camera);
}