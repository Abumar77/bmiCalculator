import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const colorSTable = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainer = Color(0XFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  //The solution without ternary operators
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateColor(Gender selectedGender) {
  //   //male
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = colorSTable;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   //female
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = colorSTable;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? colorSTable
                        : inactiveCardColor,
                    cardChild: SexWidget(
                      sexIcon: FontAwesomeIcons.mars,
                      sexText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? colorSTable
                        : inactiveCardColor,
                    cardChild: SexWidget(
                      sexIcon: FontAwesomeIcons.venus,
                      sexText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    colour: colorSTable,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    colour: colorSTable,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    colour: colorSTable,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainer,
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
