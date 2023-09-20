import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive/detailk_screen.dart';

class PercentageIndicator extends StatefulWidget {
  const PercentageIndicator({Key? key}) : super(key: key);
  static const String routname = '/perindcatr';
  @override
  State<PercentageIndicator> createState() => _PercentageIndicatorState();
}

class _PercentageIndicatorState extends State<PercentageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 25,
              )),
          CircularPercentIndicator(
            radius: 100,
            animation: true,
            animationDuration: 500,
            lineWidth: 15.0,
            percent: 0.4,
            center: new Text(
              "40 hours",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.yellow,
            progressColor: Colors.red,
          ),
          LinearPercentIndicator(
            lineHeight: 10,
            percent: 0.6,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade200,
            animation: true,
            animationDuration: 1000,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, DetailScreen.rout);
              },
              child: Text(
                'Next',
                textScaleFactor: 2,
              ))
        ],
      )),
    );
  }
}
