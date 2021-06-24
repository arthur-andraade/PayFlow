import 'package:flutter/material.dart';
import 'package:playflow/modules/home/home_page.dart';
import 'package:playflow/modules/login/login_page.dart';
import 'package:playflow/modules/splash/splash_page.dart';
import 'package:playflow/shared/theme/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: HomePage(),
    );
  }
}
