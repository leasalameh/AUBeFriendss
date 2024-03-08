import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/src/features/screens/home/homeScreen.dart';
import 'package:project_app/src/features/screens/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';

import '../../../models/AppUser.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<AppUser?>(context);
    if (currentUser == null)
      return WelcomeScreen();
    else
      return HomeScreen(chats: [],);
  }
}