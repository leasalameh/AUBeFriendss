import 'package:flutter/material.dart';

class MySignUpButton extends StatelessWidget {
  const MySignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.red[900], borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
              "Sign Up Now!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7),
            )),
      ),
    );
  }
}
