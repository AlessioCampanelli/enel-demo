import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EnelCard extends StatelessWidget {
  final Widget input;

  EnelCard(this.input);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Card(
        elevation: 15,
        child: input,
      ),
    );
  }
}
