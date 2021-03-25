import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zhangyu/stores/sentence_store.dart';

class WordController extends GetxController {
  WordController(){
    print('init word controller');
  }
  var store = (SentenceStore()).obs;
  var count = 0.obs;
  
  wordFromGallery() async {
    await store.value!.generalBasic(source: ImageSource.gallery);
    store.refresh();
  }

  wordFromCamera() async {
    await store.value!.generalBasic(source: ImageSource.gallery);
    store.refresh();
  }

  add(){
    ++count;
  }
}