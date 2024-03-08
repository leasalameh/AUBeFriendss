import 'package:flutter/material.dart';
import 'package:project_app/src/features/screens/login/login_screen.dart';
import 'package:project_app/src/features/screens/signup/signup_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignUpScreen(),
    );
  }
}
