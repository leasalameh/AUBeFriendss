import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/image_strings.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/features/screens/login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Text("OR"),
        // SizedBox(
        //   width: double.infinity,
        //   child: OutlinedButton.icon(
        //     onPressed: () {},
        //     icon: const Image(
        //       image: AssetImage(tGoogleLogoImage),
        //       width: 20.0,
        //     ),
        //     label: Text(tSignInWithGoogle.toUpperCase()),
        //   ),
        // ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>LoginScreen(),
              ),
            );
          },
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: tAlreadyHaveAnAccount,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: tAccentColor),
            ),
            TextSpan(text: tLogin.toUpperCase())
          ])),
        )
      ],
    );
  }
}
