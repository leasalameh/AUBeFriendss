import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/constants/image_strings.dart';
import 'package:project_app/src/features/screens/signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const Text("OR"),
        const SizedBox(height: tFormHeight - 20),

        // SizedBox(
        //   width: double.infinity,
        //   // child: OutlinedButton.icon(
        //   //   icon: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0),
        //   //   onPressed: () {},
        //   //   label: const Text(tSignInWithGoogle),
        //   // ),
        // ),
        const SizedBox(height: tFormHeight - 20),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            },
            child: Text.rich(
              TextSpan(
                  text: tDontHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: tAccentColor),
                  children: const [
                    TextSpan(text: tSignup, style: TextStyle(color: Colors.blue))
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}