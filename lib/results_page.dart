import 'dart:ui';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({required this.bmi,required this.interprtetion,required this.results});

  final String bmi;
  final String results;
  final String interprtetion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kNumberStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                  activeCardColour,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(results,
                          style: TextStyle(
                            color: Color(0xFF24D876),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        bmi,
                        style: kLargeNumberStyle,
                      ),
                      Text(
                        interprtetion,
                        style: kSmallTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  () {})),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                'RE-CALCULATE',
                style: kLargeNumberTextStyle,
              )),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              height: 80,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
