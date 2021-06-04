import 'package:flutter/material.dart';
import 'package:uidemo/config/app_config.dart';
import 'package:uidemo/config/constants.dart';
import 'package:uidemo/main_common.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: "Enel-dev",
    appInternalId: 1,
    child: Constants(
      child: EnelEnergiaApp(),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(configuredApp);
}
