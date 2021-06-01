import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';

class BillsDetails extends StatefulWidget {
  @override
  _BillsDetailsState createState() => _BillsDetailsState();
}

class _BillsDetailsState extends State<BillsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnelNavBar('Dettaglio', isBackButtonActive: true),
    );
  }
}
