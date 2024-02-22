import 'package:flutter/material.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/features/authentication/screens/forgetPassword/forget_password_bottom_sheet.dart';
import 'package:project_app/src/features/authentication/screens/forgetPassword/forget_password_mail/forget_password_mail_screen.dart';
import 'package:project_app/src/features/authentication/screens/forgetPassword/otp/otp_screen.dart';
import 'package:project_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:project_app/src/features/authentication/screens/profile/pofile_screen.dart';
import 'package:project_app/src/features/authentication/screens/profile/update_profile_screen.dart';
import 'package:project_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:project_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:project_app/src/utils/theme/theme.dart';

void main() => runApp(const App());


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


class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("A.U.BeFriends"),
          leading: const Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart_outlined),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Sub-heading",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/books.png")),
            ),
          ],
        ),
      ),
    );
  }
}


