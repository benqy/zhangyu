import 'package:flutter_tts/flutter_tts.dart';

class Speaker {
  static Future speak(String str) async {
    FlutterTts flutterTts = FlutterTts();
    await flutterTts.speak(str);
  }
}
