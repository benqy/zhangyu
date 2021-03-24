import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WordDetailView extends StatefulWidget {
  const WordDetailView({Key? key}) : super(key: key);

  @override
  _WordDetailViewState createState() => _WordDetailViewState();
}

class _WordDetailViewState extends State<WordDetailView> {
  String temp = 'aa';

  @override
  Widget build(BuildContext context) {
    print(Get.parameters);
    print(Get.arguments);
    return Container(
      child: Column(
        children: [
          Container(child: Text(temp)),
          Container(child: Text('333333')),
          GestureDetector(
            child: Container(height: 100,color: Colors.blue,width:double.infinity),
            onTap: (){
              print('33434');
            },
          )
        ],
      ),
    );
  }
}
