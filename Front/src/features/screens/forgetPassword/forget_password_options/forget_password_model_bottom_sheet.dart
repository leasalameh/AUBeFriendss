import 'package:flutter/material.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/constants/text_strings.dart';
import '../button_sheet_button_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPasswordTitle,
                  style: Theme.of(context).textTheme.headline2),
              Text(tForgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 30.0),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: tEmail,
                subTitle: tResetViaEMail,
                onTap: () {},
              ),
              const SizedBox(height: 20.0),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mobile_friendly_rounded,
                title: tPhoneNo,
                subTitle: tResetViaPhone,
                onTap: () {},
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
