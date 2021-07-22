import 'package:flutter/material.dart';
import 'package:newnavapp/about_screen.dart';
import 'package:newnavapp/achievments_screen.dart';
import 'package:newnavapp/home_screen.dart';
import 'package:newnavapp/lessons_screen.dart';
import 'package:newnavapp/profile_screen.dart';
import 'package:newnavapp/programms_screen.dart';
import 'package:newnavapp/skills_screen.dart';
import 'package:newnavapp/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: WelcomeScreen.id
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) =>
            WelcomeScreen(title: 'Grow aikidoka home'),
        // WelcomeScreenSliverList.id: (context) => WelcomeScreenSliverList(),
        AboutScreen.id: (context) => AboutScreen(),
        AchievmentsScreen.id: (context) => AchievmentsScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        LessonsScreen.id: (context) => LessonsScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        ProgrammsScreen.id: (context) => ProgrammsScreen(),
        SkillsScreen.id: (context) => SkillsScreen(),
      },
      title: 'Grow aikidoka',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      // scrollBehavior: const ConstantScrollBehavior(),
    );
  }
}
