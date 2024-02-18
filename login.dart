import 'package:aubfriends/Services/mySignUpButton.dart';
import 'package:aubfriends/Services/myTextField.dart';
import 'package:aubfriends/Services/mySignInButton.dart';
import 'package:flutter/material.dart';
// import 'signup.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.red[800],
          backgroundColor: Colors.red[900],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          title: const Text(
            "A.U.BeFriends",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(height: 25),
              const Icon(
                Icons.lock_outline,
                size: 100,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Welcome back student!',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: usernameController,
                obscureText: false,
                hintText: 'ex: rba17@mail.aub.edu',
              ),
              SizedBox(height: 25),
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: 'ex: !LoveC@t\$420',
              ),
              SizedBox(height: 10),
              Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
              MySignInButton(),
              SizedBox(
                height: 50,
              ),
              Text('Don\'t have an account yet?'),
              SizedBox(
                height: 50,
              ),
              MySignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
