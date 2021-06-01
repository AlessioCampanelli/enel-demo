import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';

class NewsTab extends StatefulWidget {
  @override
  _SupportTabState createState() => _SupportTabState();
}

class _SupportTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnelNavBar('News'),
    );
  }
}
