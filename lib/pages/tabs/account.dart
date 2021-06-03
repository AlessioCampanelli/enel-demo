import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidemo/widgets/navigationbar/navbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountTab extends StatefulWidget {
  @override
  _SupportTabState createState() => _SupportTabState();
}

class _SupportTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnelNavBar(AppLocalizations.of(context).accountTitle),
    );
  }
}
