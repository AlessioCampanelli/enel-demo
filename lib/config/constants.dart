import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Constants>();

  Constants({Widget child, Key key}) : super(key: key, child: child);

  final Color primary = Color.fromRGBO(211, 19, 91, 1);
  final Color background = Colors.grey[300];

  @override
  bool updateShouldNotify(Constants oldWidget) => false;
}
