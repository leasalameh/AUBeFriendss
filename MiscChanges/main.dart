import 'package:flutter/material.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/features/screens/forgetPassword/forget_password_bottom_sheet.dart';
import 'package:project_app/src/features/screens/forgetPassword/forget_password_mail/forget_password_mail_screen.dart';
import 'package:project_app/src/features/screens/forgetPassword/otp/otp_screen.dart';
import 'package:project_app/src/features/screens/login/login_screen.dart';
import 'package:project_app/src/features/screens/profile/profile_screen.dart';
import 'package:project_app/src/features/screens/profile/update_profile_screen.dart';
import 'package:project_app/src/features/screens/signup/signup_screen.dart';
import 'package:project_app/src/features/screens/welcome/welcome_screen.dart';
import 'package:project_app/src/utils/theme/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // defaultTransition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
      home: WelcomeScreen(),
    );
  }
}
