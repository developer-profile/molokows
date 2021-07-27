import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newnavapp/about_screen_copy.dart';
import 'package:newnavapp/iconContent_class.dart';
import 'package:newnavapp/reusablecard.dart';

enum Gender { male, female, aikidoka }

final activeColour = Colors.purple;
final inactiveColour = Colors.blue;
final aikinactiveColour = Colors.white;
final aikiactiveColour = Colors.black26;
final backroundColour = Colors.black54;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key, required this.title}) : super(key: key);
  static const String id = 'welcome_screen';
  final String title;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _counter = 100;
  Color maleCardColour = inactiveColour;
  Color femaleCardColour = inactiveColour;
  Color aikidokaCardColour = aikinactiveColour;

  void updateColour(gender) {
    gender == Gender.male
        ? maleCardColour = activeColour
        : femaleCardColour = activeColour;
    gender == Gender.male
        ? femaleCardColour = inactiveColour
        : maleCardColour = inactiveColour;
    gender == Gender.aikidoka
        ? aikidokaCardColour = aikinactiveColour
        : aikidokaCardColour = aikiactiveColour;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WelcomeScreen.id),
        backgroundColor: Colors.teal[800],
      ),
      body: Column(
        children: [
          ReusableCard(
            onPress: () {
              setState(() {
                updateColour(Gender.female);
              });
            },
            ad: 'empty',
            colour: femaleCardColour,
            cardChild:
                IconContent(icon: FontAwesomeIcons.venus, label: "female"),
          ),
          ReusableCard(
            onPress: () {
              setState(() {
                Navigator.pushNamed(context, AboutScreen.id);
              });
            },
            cardChild: IconContent(
                icon: FontAwesomeIcons.youtube, label: "Youtube Link"),
          ),
        ],
      ),
      // This remains unchanged.

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
