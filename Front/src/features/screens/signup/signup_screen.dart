import 'package:flutter/material.dart';
import 'package:project_app/src/common_widgets/form/form_header_widget.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/constants/image_strings.dart';
import 'package:project_app/src/features/screens/signup/signup_footer_widget.dart';
import 'package:project_app/src/features/screens/signup/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                  imageHeight: 0.2,
                ),
                SizedBox(height: 10.0),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
