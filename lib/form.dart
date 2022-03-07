import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner_mrz_ui/styles.dart';
import 'package:scanner_mrz_ui/widgets/custom_textfield.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

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
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                10,
                (index) => index == 0
                    ? Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 25,
                        ),
                        child: Text(
                          'INGRESAR\nDATOS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(MyColors.textColor),
                              fontSize: 32,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    : index == 1
                        ? Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: Icon(
                              Icons.document_scanner_outlined,
                              size: 40,
                              color: Color(MyColors.goldColor),
                            ),
                          )
                        : CustomTextField(
                            errorInfo: Random().nextBool(),
                          )),
          ),
        ),
      ),
    );
  }
}
