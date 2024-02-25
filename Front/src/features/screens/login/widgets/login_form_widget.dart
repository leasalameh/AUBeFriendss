import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/constants/text_strings.dart';
import '../../forgetPassword/button_sheet_button_widget.dart';
import '../../forgetPassword/forget_password_bottom_sheet.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Add a boolean variable to track the visibility state
  bool _isPasswordObscured = true;

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
                  prefixIcon:
                      Icon(Icons.person_outline_outlined, color: tAccentColor),
                  labelText: tEmail,
                  labelStyle: TextStyle(color: tAccentColor),
                  hintText: tEmail,
                  hintStyle: TextStyle(color: tAccentColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tAccentColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tAccentColor),
                  )),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              obscureText: _isPasswordObscured, // Use the boolean variable here
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint, color: tAccentColor),
                labelText: tPassword,
                labelStyle: const TextStyle(color: tAccentColor),
                hintText: tPassword,
                hintStyle: const TextStyle(color: tAccentColor),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: tAccentColor),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: tAccentColor),
                ),
                suffixIcon: IconButton(
                  // Update the onPressed callback
                  onPressed: () {
                    // Toggle the visibility state
                    setState(() {
                      _isPasswordObscured = !_isPasswordObscured;
                    });
                  },
                  icon: Icon(
                    // Change the icon based on the visibility state
                    _isPasswordObscured
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: tAccentColor,
                  ),
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
                  )),
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
