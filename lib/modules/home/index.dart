import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zhangyu/components/ocr.dart';
import 'package:zhangyu/components/pinyin.dart';
import 'package:zhangyu/components/tts.dart';
import 'package:zhangyu/model/sentence.dart';
import 'package:zhangyu/model/word.dart';
import 'package:zhangyu/widgets/nav.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Sentence> sentences = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children:[
          head(),
          Expanded(child: ListView.builder(
            itemCount: sentences.length,
            itemBuilder: (BuildContext listContext, int index){
              return buildItem(listContext, index);
            }
          ))
        ]),
        bottomNavigationBar: NavBar(),
      ),
    );
  }

  Widget buildItem(BuildContext listContext, int index){
    return Container(
      margin: EdgeInsets.fromLTRB(15,20,15,20),
      // height: 100,
      width: double.infinity,
      // color: Colors.blue,
      child: Wrap(spacing: 2, runSpacing: 10,children: [
        for(var word in sentences[index].words) renderWord(word),
        buildSentenceSpeakBtn(index)
      ])
    );
  }

  Widget buildSentenceSpeakBtn(int index) {
    return IconButton(icon: Icon(Icons.play_arrow), onPressed: (){
       Speaker.speak(sentences[index].value);
    });
  }

  Widget renderWord(Word word) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 50,
        child: Column(children: [
          Text(word.pinyin,style: TextStyle(fontSize: 16),),
          Text(word.hanzi,style: TextStyle(fontSize: 16))
        ],)
      ),
      onTap: (){
        Speaker.speak(word.hanzi);
      },
    );
  }

  reset() {
    sentences = [];
  }

  void generalBasic({ImageSource source}) async {
    reset();
    var strs = await OCR.generalBasic(source: source);
    print(strs);
    strs.forEach((str) {
      var chars = str.split('');
      List<Word> words = [];
      chars.forEach((char) {
        words.add(Pinyin.getPinyinByWord(char));
      });
      sentences.add(Sentence(words));
    });
    print(sentences);
    // Speaker.speak(text);
    setState(() {});
  }

  Widget head() {
    return Container(
      padding: EdgeInsets.all(15),
      height: 80,
      color: Colors.white,
      width:double.infinity,
      child: Container(
        height: 60,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Row(children: [
          IconButton(icon: Icon(Icons.photo), onPressed: (){
            generalBasic(source: ImageSource.gallery);
          }),
          IconButton(icon: Icon(Icons.camera_alt ), onPressed: (){
            generalBasic(source: ImageSource.camera);
          }),
        ],),
      )
    );
  }
}
