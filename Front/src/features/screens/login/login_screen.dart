import 'package:flutter/material.dart';
import 'package:project_app/backend/auth.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/features/screens/login/widgets/login_footer_widget.dart';
import 'package:project_app/src/features/screens/login/widgets/login_header_widget.dart';
import 'package:project_app/src/features/screens/login/widgets/login_form_widget.dart';

// Define the StatefulWidget
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// Define the corresponding State class
class _LoginScreenState extends State<LoginScreen> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
