import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        child: Text(
          'Dati non disponibili',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
