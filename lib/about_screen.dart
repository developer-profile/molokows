import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newnavapp/iconContent_class.dart';
import 'package:newnavapp/reusablecard.dart';
import 'package:newnavapp/skills_screen.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(AboutScreen.id),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Container(
              child: CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      const Text("I'm dedicating every day to you"),
                      const Text('Domestic life was never quite my style'),
                      const Text(
                          'When you smile, you knock me out, I fall apart'),
                      const Text('And I thought I was so smart'),
                      ReusableCard(
                        onPress: () {
                          setState(() {
                            Navigator.pushNamed(context, WelcomeScreen.id);
                          });
                        },
                        ad: 'empty',
                        colour: Colors.amber,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.yinYang,
                            label: "WelcomeScreen"),
                      ),
                      ReusableCard(
                        onPress: () {
                          setState(() {
                            Navigator.pushNamed(context, SkillsScreen.id);
                          });
                        },
                        ad: 'empty',
                        colour: Colors.amber,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.yinYang,
                            label: SkillsScreen.id),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
