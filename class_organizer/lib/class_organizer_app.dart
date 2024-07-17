import 'package:class_organizer/splash/splash_screen_v1.dart';
import 'package:class_organizer/style/themes/lightTheme.dart';
import 'package:class_organizer/ui/Home_Screen.dart';
import 'package:class_organizer/ui/screens/on_loading_screens/first_loading_screen.dart';
import 'package:flutter/material.dart';

import 'splash/splash_screen.dart';

class ClassOrganizerApp extends StatelessWidget {
  const ClassOrganizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Organizer',
      debugShowCheckedModeBanner:false ,
      theme: lightTheme(),
      home: const SplashScreenV1(),
      routes: {
        '/home':(context)=>const HomeScreen(),
        '/firstLoadingScreen' :(context) =>const FirstLoadingScreen(),
      },
    );
  }



}
