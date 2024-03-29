import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:project_app/src/constants/sizes.dart';
import 'package:project_app/src/constants/text_strings.dart';
import 'package:project_app/src/features/screens/profile/profile_menu_widget.dart';
import 'package:project_app/src/features/screens/profile/update_profile_screen.dart';
import 'package:project_app/src/constants/colors.dart';
import 'package:project_app/src/constants/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(LineAwesomeIcons.angle_left, color: tAccentColor),
        ),
        title: Text(
          tProfile,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: tAccentColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
                color: tAccentColor),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(tProfileImage))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tCardBgColor),
                      child: const Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: tAccentColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                tProfileHeading,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: tAccentColor),
              ),
              Text(
                tProfileSubHeading,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: tAccentColor),
              ),
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfileScreen()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tCardBgColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(tEditProfile,
                      style: TextStyle(color: tAccentColor)),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
              ProfileMenuWidget(
                  title: "Settings",
                  icon: LineAwesomeIcons.cog,
                  textColor: tAccentColor,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Courses Taken",
                  icon: LineAwesomeIcons.alternate_pen,
                  textColor: tAccentColor,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Information",
                  icon: LineAwesomeIcons.info,
                  textColor: tAccentColor,
                  onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Help",
                  icon: LineAwesomeIcons.alternate_comment,
                  textColor: tAccentColor,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: const TextStyle(fontSize: 20),
                      content: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Are you sure, you want to Logout?"),
                      ),
                      //  confirm: Expanded(
                      //    child: ElevatedButton(
                      //      onPressed: () => AuthenticationRepository.instance.logout(),
                      //      style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, side: BorderSide.none),
                      //     child: const Text("Yes"),
                      //   ),
                      // ),
                      cancel: OutlinedButton(
                          onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
