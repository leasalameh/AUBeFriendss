import 'package:aubfriends/Pages/profile.dart';
import 'package:flutter/material.dart';
import 'Pages/loading.dart';
import 'Pages/login.dart';

void main() => runApp(MaterialApp(
    initialRoute: 'login',
    routes: {

      '/': (context) => const LoadingScreen(),
      'login': (context) => Login(),
      '/profile':(context)=>Profile(),
    }));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
