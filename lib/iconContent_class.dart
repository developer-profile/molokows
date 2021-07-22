import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const numberIconSize = 80.0;

const numberSizedBox = 15.0;

class IconContent extends StatelessWidget {
  const IconContent({this.icon, this.label});

  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Icon(
          icon,
          size: numberIconSize,
        ),

        SizedBox(
          height: numberSizedBox,
        ),
        Text(label!,
          style: labelTextStyle,
        )
      ],
    );
  }
}
