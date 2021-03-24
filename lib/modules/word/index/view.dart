import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zhangyu/components/tts.dart';
import 'package:zhangyu/model/sentence.dart';
import 'package:zhangyu/model/word.dart';
import 'package:zhangyu/modules/word/index/controller.dart';
import 'package:zhangyu/stores/sentence_store.dart';
import 'package:zhangyu/widgets/nav.dart';

class WordIndexView extends StatelessWidget {
  WordIndexView({Key? key}) : super(key: key);
  final WordController c = Get.put(WordController())!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children:[
          head(),
          Expanded(child: ListView.builder(
            itemCount: c.store.lists.length,
            itemBuilder: (BuildContext listContext, int index){
              return buildItem(listContext, c.store.lists[index]);
            }
          ))
        ]),
        bottomNavigationBar: NavBar(),
      ),
    );
  }

  Widget buildItem(BuildContext listContext, Sentence sentence){
    return Container(
      margin: EdgeInsets.fromLTRB(15,20,15,20),
      // height: 100,
      width: double.infinity,
      // color: Colors.blue,
      child: Wrap(spacing: 2, runSpacing: 10,children: [
        for(var word in sentence.words) _Word(word: word),
        _SpeakButton(sentence: sentence)
      ])
    );
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
            c.wordFromGallery();
          }),
          IconButton(icon: Icon(Icons.camera_alt ), onPressed: (){
            c.wordFromCamera();
          }),
        ],),
      )
    );
  }
}

class _Word extends StatelessWidget {
  const _Word({
    Key? key,
    required this.word,
  }) : super(key: key);

  final Word word;

  @override
  Widget build(BuildContext context) {
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
}

class _SpeakButton extends StatelessWidget {
  const _SpeakButton({
    Key? key,
    required this.sentence,
  }) : super(key: key);

  final Sentence sentence;

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.play_arrow), onPressed: (){
       Speaker.speak(sentence.value);
    });
  }
}
