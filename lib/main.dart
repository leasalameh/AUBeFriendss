import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/backend/auth.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/features/screens/Wrapper.dart';
import 'package:project_app/src/features/screens/forgetPassword/forget_password_bottom_sheet.dart';
import 'package:project_app/src/features/screens/forgetPassword/forget_password_mail/forget_password_mail_screen.dart';
import 'package:project_app/src/features/screens/forgetPassword/otp/otp_screen.dart';
import 'package:project_app/src/features/screens/login/login_screen.dart';
import 'package:project_app/src/features/screens/profile/profile_screen.dart';
import 'package:project_app/src/features/screens/profile/update_profile_screen.dart';
import 'package:project_app/src/features/screens/signup/signup_screen.dart';
import 'package:project_app/src/features/screens/welcome/welcome_screen.dart';
import 'package:project_app/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'models/AppUser.dart';



Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure plugin services are initialized
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCBIayceBjqiqi3yBrtt3D3lFvV_wXdtV0",
          appId: "1:968237937887:android:a6d36537afc19126ef256a",
          messagingSenderId: "968237937887",
          projectId: "aubefriends2024"));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        // defaultTransition: Transition.leftToRightWithFade,
        // transitionDuration: const Duration(milliseconds: 500),
        home: const Wrapper(),
      ),
    );
  }
}