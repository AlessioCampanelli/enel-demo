import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uidemo/pages/tabs/account.dart';
import 'package:uidemo/pages/tabs/bills/bills_screen.dart';
import 'package:uidemo/pages/tabs/news.dart';
import 'package:uidemo/pages/tabs/support.dart';
import 'package:uidemo/pages/tabs/wow.dart';
import 'package:uidemo/config/constants.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Constants(
    child: EnelEnergiaApp(),
  ));
}

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
      title: "Enel Energia",
      debugShowCheckedModeBanner: false,
      color: Theme.of(context).primaryColor,
      home: SplashScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            headline2: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Open Sans'),
            headline3: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontFamily: 'Open Sans'),
            headline4: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Open Sans'),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            subtitle2: TextStyle(
                fontSize: 14.0, fontFamily: 'Hind', color: Colors.green[700])),
        primaryColor: Constants.of(context).primary,
        backgroundColor: Constants.of(context).background,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
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
              label: 'Forniture',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded), label: 'Supporto'),
            BottomNavigationBarItem(
                icon: Icon(Icons.present_to_all), label: 'Wow'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded), label: 'Novità'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Account')
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
              return NewsTab();
            case 4:
              return AccountTab();
            default:
              return BillsTab();
          }
        });
  }
}
