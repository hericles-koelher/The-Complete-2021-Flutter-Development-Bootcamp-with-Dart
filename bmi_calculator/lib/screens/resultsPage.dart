import 'package:bmi_calculator/ibmProvider.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
  final IBMProvider infoProvider;

  ResultsPage({@required this.infoProvider});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CALCULADORA DE IMC"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Seu Resultado",
                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
            ReusableCard(
              flex: 6,
              backgroundColor: kDefaultReusableCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    infoProvider.status(),
                    style: kStatusTextStyle,
                  ),
                  Text(
                    infoProvider.result.toStringAsPrecision(3),
                    style: kBMITextStyle,
                  ),
                  Text(
                    infoProvider.interpretation(),
                    style: kInterpretationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
