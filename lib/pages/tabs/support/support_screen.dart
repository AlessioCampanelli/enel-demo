import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SupportTab extends StatefulWidget {
  @override
  _SupportTabState createState() => _SupportTabState();
}

class _SupportTabState extends State<SupportTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: EnelNavBar(AppLocalizations.of(context).supportTitle),
        body: const Center(
          child: Text(''),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
            onPressed: () {},
            child: Container(
              child: const Icon(
                Icons.support_agent_sharp,
                color: Colors.white,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ));
  }
}
