import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsumerWidget<T extends ChangeNotifier> extends StatelessWidget {

  final Widget Function(BuildContext context, T value, Widget child) builder;
  final T store;
  final Widget child;


  ConsumerWidget({Key key,  @required this.builder, @required this.store, this.child}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: store,
      child: Consumer<T>(
        builder: builder,
        child: child,
      ),
    );
  }
}