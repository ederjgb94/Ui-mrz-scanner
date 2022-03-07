import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_mrz_ui/form.dart';
import 'package:scanner_mrz_ui/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _login() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
      return const FormPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(MyColors.background),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(MyColors.blueColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 60,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DelayedDisplay(
              child: SvgPicture.asset(
                'images/undraw_people_re_8spw.svg',
                height: 200,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const DelayedDisplay(
              delay: Duration(milliseconds: 1200),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Color(MyColors.textColor),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            DelayedDisplay(
              slidingCurve: Curves.linear,
              // slidingBeginOffset: Offset(0.02, 0),
              delay: const Duration(milliseconds: 1600),
              fadingDuration: const Duration(milliseconds: 500),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  // vertical: 20,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.grey.shade300,
                  ),
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Cuenta',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DelayedDisplay(
              slidingCurve: Curves.linear,
              // slidingBeginOffset: Offset(0, 3.5),
              delay: const Duration(milliseconds: 2000),
              fadingDuration: const Duration(milliseconds: 500),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.grey.shade300,
                  ),
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (c) {
                    _login();
                  },
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 2400),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(MyColors.goldColor),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(4),
                    onTap: _login,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      decoration: const BoxDecoration(
                          // color: Color(MyColors.goldColor),

                          ),
                      child: const Text(
                        'Ingresar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(MyColors.greyground),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
