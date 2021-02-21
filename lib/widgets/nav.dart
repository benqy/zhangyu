import 'package:flutter/material.dart';
import 'package:zhangyu/constants/constants.dart';

enum NavBarHightlightType {
  home,
  item,
}

class NavBar extends StatefulWidget{

  final NavBarHightlightType hightlightType;
  final bool shadow;
  NavBar({this.hightlightType,this.shadow = true});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar>{

  Widget generalButton(NavBarHightlightType type, Function onPressed,{ bool isImportant = false}){
    // var imageUrl = 'images/' + type.toString().split('.').last;
    var buttonText = '';
    var color = Colors.black;
    Icon icon;
    if(type == widget.hightlightType) {
      // imageUrl += '-active';
      color = Constants.mainColor;
    }
    // imageUrl += '.png';

    switch (type) {
      case NavBarHightlightType.home:
        buttonText = '识字';
        icon = Icon(Icons.home,size:24);
        break;
      case NavBarHightlightType.item:
        buttonText = '识物';
        icon = Icon(Icons.camera,size:24);
        break;
      default:
    }
    return FlatButton(
      child: Container(
        // color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
              width:50,
              child: icon,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
              child:Text(buttonText, style: TextStyle(fontSize:12, color: color))
            )
          ]
        ),
      ),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    var setting = ModalRoute.of(context).settings;
    

    return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(color: Colors.grey[400],offset: Offset(1, 1),blurRadius: 15,)
          ],
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            generalButton(NavBarHightlightType.home, (){
              Navigator.pushNamed(context, '/home');
            }),
            generalButton(NavBarHightlightType.item, (){
              Navigator.pushNamed(context, '/gift');
            }),
          ],
        )
      );
  }
}
