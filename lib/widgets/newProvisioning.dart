import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewProvisioning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Container(
        height: 100,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(AppLocalizations.of(context).newProvisioning,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2),
            Text(AppLocalizations.of(context).newProvisioningSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3)
          ],
        ),
      ),
    );
  }
}
