import 'package:flutter/material.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/constants/image_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage(tLoginScreenImage),
            height: size.height * 0.4),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: tAccentColor,
              ),
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: tAccentColor,
              ),
        ),
      ],
    );
  }
}
