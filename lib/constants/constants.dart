import 'package:flutter/material.dart';

@immutable
class Constants {

  /// 项目名称
  static final appName = '丈育';
  static final gPadding = EdgeInsets.fromLTRB(15, 0, 15, 0);
  static final mainColor = Color(0xffffcd00);
  static final grayColor = Color(0xff999999);
  static final mainFontColor = Color(0XFF222222);
  static final linkColor = Color(0xFF3C94FF);
  static final subFontColor = Color(0XFFAAAAAA);
  static final grayBackGround = Color(0xFFF5F5F5);
  static final borderColor = Color(0xFFE5E5E5);
  static final borderLine =  Divider(color: Color(0xFFF5F5F5),thickness: 1,height: 1,);
  //礼包卡密存储keyword
  static final giftCardDataKey =  'giftCardDataKey';

  static final barTopShadow = BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    boxShadow: [
      BoxShadow(color: grayColor,offset: Offset(1, 1),blurRadius: 15,)
    ],
  );
}