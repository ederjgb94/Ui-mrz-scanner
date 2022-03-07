import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_mrz_ui/form.dart';
import 'package:scanner_mrz_ui/splash_screen.dart';
import 'package:scanner_mrz_ui/styles.dart';

void main() {
  runApp(const AnnotatedRegion<SystemUiOverlayStyle>(
    child: MyApp(),
    value: SystemUiOverlayStyle(
      systemNavigationBarColor: Color(MyColors.background),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI SCANNER MRZ',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: const Color(MyColors.goldColor),
      ),
      home: SplashScreen(),
    );
  }
}
