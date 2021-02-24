import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:zhangyu/components/tts.dart';
import 'package:zhangyu/model/sentence.dart';
import 'package:zhangyu/model/word.dart';
import 'package:zhangyu/stores/sentenceStore.dart';
import 'package:zhangyu/widgets/nav.dart';

class WordIndexView extends StatelessWidget {
  WordIndexView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var store = context.watch<SentenceStore>(); 
    return SafeArea(
      child: Scaffold(
        body: Column(children:[
          head(store),
          Expanded(child: ListView.builder(
            itemCount: store.lists.length,
            itemBuilder: (BuildContext listContext, int index){
              return buildItem(listContext,store.lists[index]);
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
        for(var word in sentence.words) renderWord(word),
        buildSentenceSpeakBtn(sentence)
      ])
    );
  }

  Widget buildSentenceSpeakBtn(Sentence sentence) {
    return IconButton(icon: Icon(Icons.play_arrow), onPressed: (){
       Speaker.speak(sentence.value);
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


  Widget head(SentenceStore sentenceStore) {
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
            sentenceStore.generalBasic(source: ImageSource.gallery);
          }),
          IconButton(icon: Icon(Icons.camera_alt ), onPressed: (){
            sentenceStore.generalBasic(source: ImageSource.camera);
          }),
        ],),
      )
    );
  }
}
