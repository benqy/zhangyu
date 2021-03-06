import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:zhangyu/stores/word_store.dart';

class WordDetailView extends StatefulWidget {
  final String char;
  const WordDetailView(this.char, {Key key}) : super(key: key);

  @override
  _WordDetailViewState createState() => _WordDetailViewState();
}

class _WordDetailViewState extends ModularState<WordDetailView, WordStore> {
  String temp = 'aa';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(child: Text(temp)),
          Container(child: Text(controller.word)),
          GestureDetector(
            child: Container(height: 100,color: Colors.blue,width:double.infinity),
            onTap: (){
              controller.setWord(Uri.decodeComponent(widget.char));
            },
          )
        ],
      ),
    );
  }
}
