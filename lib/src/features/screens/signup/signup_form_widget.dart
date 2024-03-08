import 'package:flutter/material.dart';
import 'package:project_app/backend/auth.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/constants/sizes.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  _SignUpFormWidgetState createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  // Boolean variable to track the visibility of the password
  bool _isPasswordObscured = true;

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
  String name = '';
  String email = '';
  String number = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    tFullName,
                    style: TextStyle(color: tAccentColor),
                  ),
                  prefixIcon:
                      Icon(Icons.person_outline_rounded, color: tAccentColor),
                ),
                onChanged: (val) {
                  setState(() => name = val);
                }),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
                validator: (val) =>
                    val == null || val.isEmpty ? 'Enter an email' : null,
                decoration: const InputDecoration(
                  label: Text(
                    tEmail,
                    style: TextStyle(color: tAccentColor),
                  ),
                  prefixIcon: Icon(Icons.email_outlined, color: tAccentColor),
                ),
                onChanged: (val) {
                  setState(() => email = val);
                }),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    tPhoneNo,
                    style: TextStyle(color: tAccentColor),
                  ),
                  prefixIcon: Icon(Icons.numbers, color: tAccentColor),
                ),
                onChanged: (val) {
                  setState(() => number = val);
                }),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
                validator: (val) => val != null && val.length < 6
                    ? 'Enter a password with more than 6 characters'
                    : null,
                obscureText: _isPasswordObscured,
                decoration: InputDecoration(
                    label: const Text(
                      tPassword,
                      style: TextStyle(color: tAccentColor),
                    ),
                    prefixIcon:
                        const Icon(Icons.fingerprint, color: tAccentColor),
                    suffixIcon: IconButton(
                      onPressed: () {
                        // Toggle the password visibility
                        setState(() {
                          _isPasswordObscured = !_isPasswordObscured;
                        });
                      },
                      icon: Icon(
                        _isPasswordObscured
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: tAccentColor,
                      ),
                    )),
                onChanged: (val) {
                  setState(() => password = val);
                }),
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    print(email);
                    print(password);
                  }
                },
                child: Text(
                  tSignup.toUpperCase(),
                  style: const TextStyle(color: tAccentColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
