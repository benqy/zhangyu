import 'package:flutter/material.dart';

class WordDetailView extends StatelessWidget {
  final String char;
  const WordDetailView(this.char, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(child:Text(Uri.decodeComponent(char))),
    );
  }
}