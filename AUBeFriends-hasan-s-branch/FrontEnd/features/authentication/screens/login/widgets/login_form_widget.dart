import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/constants/text_strings.dart';
import '../../forgetPassword/buttom_sheet_button_widget.dart';
import '../../forgetPassword/forget_password_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined, color: tAccentColor),
                  labelText: tEmail,
                  labelStyle: TextStyle(color: tAccentColor),
                  hintText: tEmail,
                  hintStyle: TextStyle(color: tAccentColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tAccentColor),
                  ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: tAccentColor),
                )
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint, color: tAccentColor),
                labelText: tPassword,
                labelStyle: TextStyle(color: tAccentColor),
                hintText: tPassword,
                hintStyle: TextStyle(color: tAccentColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: tAccentColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: tAccentColor),
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp, color: tAccentColor),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(
                      tForgetPassword,
                      style: TextStyle(color: tAccentColor),
                  )
                  ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

