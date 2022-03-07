import 'package:flutter/material.dart';
import 'package:scanner_mrz_ui/styles.dart';

class CustomTextField extends StatefulWidget {
  final bool errorInfo;

  const CustomTextField({Key? key, required this.errorInfo}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return CustomTextFieldState();
  }
}

class CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: TextField(
            style: TextStyle(
              color: Colors.grey.shade300,
            ),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Nombre',
              labelStyle: TextStyle(
                color: widget.errorInfo
                    ? Colors.red.shade400
                    : const Color(MyColors.textColor),
              ),
              errorText: widget.errorInfo ? 'Error text' : null,
              errorStyle: TextStyle(
                  color: Colors.red.shade400, fontWeight: FontWeight.w800),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 15,
          child: Icon(
            widget.errorInfo ? Icons.cancel : Icons.circle,
            color: widget.errorInfo
                ? Colors.red.shade400
                : const Color(MyColors.textColor),
            size: widget.errorInfo ? 15 : 10,
          ),
        ),
      ],
    );
  }
}
