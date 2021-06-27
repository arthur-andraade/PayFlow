import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:playflow/modules/home/home_page.dart';
import 'package:playflow/modules/login/login_page.dart';
import 'package:playflow/modules/splash/splash_page.dart';
import 'package:playflow/shared/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
      },
    );
  }
}
