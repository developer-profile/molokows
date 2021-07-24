import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newnavapp/iconContent_class.dart';
import 'package:newnavapp/reusablecard.dart';
import 'package:newnavapp/welcome_screen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key, this.message, this.title}) : super(key: key);
  static const String id = 'about_screen';
  final String? title;
  final String? message;

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  // Color NavigationCardColour = Color.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReusableCard(
        onPress: () {
          setState(() {
            Navigator.pushNamed(context, WelcomeScreen.id);
          });
        },
        ad: 'empty',
        colour: Colors.amber,
        cardChild:
            IconContent(icon: FontAwesomeIcons.yinYang, label: "WelcomeScreen"),
      ),
    );
  }
}
