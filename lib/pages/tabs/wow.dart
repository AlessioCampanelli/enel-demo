import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';

class WowTab extends StatefulWidget {
  @override
  _SupportTabState createState() => _SupportTabState();
}

class _SupportTabState extends State<WowTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnelNavBar('Wow'),
    );
  }
}
