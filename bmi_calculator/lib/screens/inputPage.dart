import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/ibmProvider.dart';
import 'package:bmi_calculator/screens/resultsPage.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:bmi_calculator/widgets/roundIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 100;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('CALCULADORA DE IMC')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ReusableCard(
              backgroundColor: kDefaultReusableCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ALTURA",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: kSliderThumbColor,
                      overlayColor: kSliderOverlayColor,
                      activeTrackColor: kSliderThumbColor,
                      inactiveTrackColor: kSliderInactiveColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (newHeight) {
                        setState(() {
                          height = newHeight.floor();
                        });
                      },
                      min: 100,
                      max: 200,
                    ),
                  ),
                ],
              ),
            ),
            ReusableCard(
              backgroundColor: kDefaultReusableCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PESO",
                    style: kLabelTextStyle,
                  ),
                  Text(
                    weight.toString(),
                    style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                        icon: FontAwesomeIcons.plus,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        onPressed: () {
                          setState(() {
                            if (weight > 0) weight--;
                          });
                        },
                        icon: FontAwesomeIcons.minus,
                      ),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultsPage(
                        infoProvider: IBMProvider(
                          height: height,
                          weight: weight,
                        ),
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 15.0),
                color: kBottomButtonColor,
                height: kBottomButtonHeight,
                child: Center(
                  child: Text(
                    "CALCULE O SEU IMC",
                    style: kBottomButtonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
