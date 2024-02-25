import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/constants/sizes.dart';



class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(
                      tFullName,
                    style: TextStyle(color: tAccentColor),
                  ),
                  prefixIcon: Icon(Icons.person_outline_rounded, color: tAccentColor),),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(
                      tEmail,
                    style: TextStyle(color: tAccentColor),
                  ),
                prefixIcon: Icon(Icons.email_outlined, color: tAccentColor),),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(
                      tPhoneNo,
                    style: TextStyle(color: tAccentColor),
                  ),
                prefixIcon: Icon(Icons.numbers, color: tAccentColor),),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(
                      tPassword,
                    style: TextStyle(color: tAccentColor),
                  ),
                  prefixIcon: Icon(Icons.fingerprint, color: tAccentColor),
               suffixIcon: IconButton(
                onPressed: null,
                 icon: Icon(Icons.remove_red_eye_sharp, color: tAccentColor),
                )),

            ),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                    tSignup.toUpperCase(),
                  style: TextStyle(color: tAccentColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}