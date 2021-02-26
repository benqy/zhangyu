import 'package:flutter/material.dart';
import 'package:zhangyu/constants/constants.dart';
import 'package:zhangyu/routes.dart';

enum NavBarHightlightType {
  home,
  item,
}

typedef void OnNavPress();

class NavBar extends StatefulWidget {
  final NavBarHightlightType? hightlightType;
  final bool shadow;
  NavBar({this.hightlightType, this.shadow = true});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget generalButton(NavBarHightlightType type, OnNavPress onPressed,
      {bool isImportant = false}) {
    // var imageUrl = 'images/' + type.toString().split('.').last;
    var buttonText = '';
    var color = Colors.black;
    Icon icon;
    if (type == widget.hightlightType) {
      // imageUrl += '-active';
      color = Constants.mainColor;
    }
    // imageUrl += '.png';

    switch (type) {
      case NavBarHightlightType.home:
        buttonText = '识字';
        icon = Icon(Icons.home, size: 24, color: color);
        break;
      case NavBarHightlightType.item:
        buttonText = '识物';
        icon = Icon(Icons.camera, size: 24, color: color);
        break;
      default:
        icon = Icon(Icons.camera, size: 24, color: color);
    }
    return TextButton(
      child: Container(
        // color: Colors.blue,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: 50,
            child: icon,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Text(buttonText,
                  style: TextStyle(fontSize: 12, color: color)))
        ]),
      ),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Constants.grayColor,
              offset: Offset(1, 1),
              blurRadius: 15,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            generalButton(NavBarHightlightType.home, () {
              AppRoutes.word.pushNamed();
            }),
            generalButton(NavBarHightlightType.item, () {
              AppRoutes.wordDetail.pushNamed(urlArgs: {'char': '天'});
            }),
          ],
        ));
  }
}
