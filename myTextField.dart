import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  late final String hintText;
  late final controller;
  late final bool obscureText;

  MyTextField(
      {required this.obscureText, required this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.red.shade500,
          )),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400])
        ),
      ),
    );
  }
}
