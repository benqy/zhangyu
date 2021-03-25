import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zhangyu/widgets/nav.dart';

class WordDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Get.parameters);
    print(Get.arguments);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(child: Text('abc')),
            Container(child: Text('333333')),
            GestureDetector(
              child: Container(
                  height: 100, color: Colors.blue, width: double.infinity),
              onTap: () {
                print('33434');
              },
            ),
            ValueBuilder<bool>(
              initialValue: false,
              builder: (bool value, updateFn) =>
                  Container(child: Switch(value: value, onChanged: updateFn)),
              onUpdate: (value) => print(value),
              onDispose: () => print('dispose'),
            ),
            ObxValue<RxBool>(
                (data) => Switch(value: data.value!, onChanged: data),
                false.obs)
          ],
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
