import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    super.key,
  });

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius : BorderRadius.circular(10.0),
            // color: Colors.grey.shade200,
            color: tAccentColor,
          ),
          child: Row(
              children: [
                Icon(btnIcon, size: 60.0),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.headline6?.copyWith(color: tAccentColor),),
                    Text(subTitle, style: Theme.of(context).textTheme.bodyText2?.copyWith(color: tAccentColor),),
                  ],
                )
              ]
          )
      ),
    );
  }
}