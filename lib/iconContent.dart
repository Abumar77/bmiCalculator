import 'package:flutter/material.dart';
import 'constants.dart';

class SexWidget extends StatelessWidget {
  final IconData sexIcon;
  final String sexText;
  SexWidget({@required this.sexIcon, this.sexText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          sexIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          sexText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
