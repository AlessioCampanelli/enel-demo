import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uidemo/config/app_config.dart';
import 'package:uidemo/config/theme.dart';
import 'package:uidemo/pages/tabs/account.dart';
import 'package:uidemo/pages/tabs/bills/bills_screen.dart';
import 'package:uidemo/pages/tabs/support/support_screen.dart';
import 'package:uidemo/pages/tabs/wow/wow_screen.dart';
import 'package:uidemo/config/constants.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Image.asset(
          'assets/LaunchImage_1242x2688.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ));
  }
}

class EnelEnergiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config.appDisplayName, context);
  }
}

Widget _buildApp(String appName, BuildContext context) {
  return MaterialApp(
    localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('en', ''),
      const Locale('it', 'IT'),
    ],
    title: appName, // "Enel Energia",
    debugShowCheckedModeBanner: false,
    color: Theme.of(context).primaryColor,
    home: SplashScreen(),
    theme: EnelTheme.create(context),
  );
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                label: AppLocalizations.of(context).billsTitle),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded),
                label: AppLocalizations.of(context).supportTitle),
            BottomNavigationBarItem(
                icon: Icon(Icons.present_to_all),
                label: AppLocalizations.of(context).wowTitle),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: AppLocalizations.of(context).accountTitle)
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return BillsTab();
            case 1:
              return SupportTab();
            case 2:
              return WowTab();
            case 3:
              return AccountTab();
            default:
              return BillsTab();
          }
        });
  }
}
