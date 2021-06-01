import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EnelNavBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize {
    return new Size.fromHeight(130);
  }

  final String title;
  final bool isBackButtonActive;

  EnelNavBar(this.title, {this.isBackButtonActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        padding: EdgeInsets.only(left: 20, bottom: 20),
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              child: BackButton(color: Theme.of(context).accentColor),
              visible: isBackButtonActive,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ));
  }
}
