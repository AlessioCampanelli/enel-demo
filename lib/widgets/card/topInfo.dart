import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopInfo extends StatelessWidget {
  final String title;
  final bool isActive;
  final String address;
  final String cap;

  TopInfo(this.title, this.isActive, this.address, this.cap);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(address),
              Text(cap)
            ],
          ),
          Expanded(
              child: Container(
            alignment: Alignment.topRight,
            child: Text(
              (isActive ? 'Attiva' : 'Sospesa'),
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ))
        ],
      ),
    );
  }
}
