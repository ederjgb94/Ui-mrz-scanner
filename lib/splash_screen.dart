import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner_mrz_ui/login.dart';
import 'package:scanner_mrz_ui/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double ysize = MediaQuery.of(context).size.height;
    double wsize = MediaQuery.of(context).size.width;

    Future.delayed(const Duration(milliseconds: 2300)).whenComplete(() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
        return const LoginPage();
      }));
    });

    return Scaffold(
      backgroundColor: const Color(MyColors.background),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(MyColors.blueColor)),
      ),
      body: SizedBox(
        width: wsize,
        height: ysize,
        child: Stack(
          children: [
            Positioned(
              right: -(wsize * 0.3),
              child: Opacity(
                opacity: 0.4,
                child: Image.asset(
                  'images/APP lupa.png',
                  height: ysize,
                  width: wsize,
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            const Positioned(
              child: DelayedDisplay(
                slidingBeginOffset: Offset(0, 0.01),
                delay: Duration(milliseconds: 800),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'LF SCAN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      wordSpacing: 3,
                      letterSpacing: 10,
                      fontFamily: 'montserrat',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
