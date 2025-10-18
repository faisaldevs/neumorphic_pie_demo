import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_charts_demo/neumorphic_pie/middle_ring.dart';
import 'package:flutter_charts_demo/neumorphic_pie/progress_rings.dart';

class NeumorphicPie extends StatelessWidget {
  const NeumorphicPie({super.key});

  @override
  Widget build(BuildContext context) {
    // Outer white circle
    return Container(
      height: 290.0,
      width: 290.0,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Center(
        // Container of the pie chart
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              // BoxShadow(
              //   color: Colors.grey.withOpacity(0.8),
              //   spreadRadius: 20,
              //   blurRadius: 45,
              //   offset: Offset(0, 7), // changes position of shadow
              // ),
              // Edge shadow
              BoxShadow(
                offset: Offset(-1.5, -1.5),
                color: shadowColor,
                spreadRadius: 2.0,
                // blurRadius: 0,
              ),

              // Circular shadow
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.white,
                spreadRadius: 2.0,
                blurRadius: 4,
              ),
            ],
          ),
          child: Stack(
            children: <Widget>[
              Center(child: MiddleRing(width: 300.0)),
              Transform.rotate(
                angle: pi * 1.6,
                child: CustomPaint(
                  painter: ProgressRings(
                    completedPercentage: 0.65,
                    circleWidth: 50.0,
                    gradient: greenGradient,
                    gradientStartAngle: 0.0,
                    gradientEndAngle: pi / 3,
                    progressStartAngle: 1.85,
                    lengthToRemove: 3,
                  ),
                  child: Center(),
                ),
              ),
              Transform.rotate(
                angle: pi / 1.8,
                child: CustomPaint(
                  painter: ProgressRings(
                    completedPercentage: 0.20,
                    circleWidth: 50.0,
                    gradient: turqoiseGradient,
                  ),
                  child: Center(),
                ),
              ),
              Transform.rotate(
                angle: pi / 2.6,
                child: CustomPaint(
                  painter: ProgressRings(
                    completedPercentage: 0.35,
                    circleWidth: 50.0,
                    gradient: redGradient,
                    gradientStartAngle: 0.0,
                    gradientEndAngle: pi / 2,
                    progressStartAngle: 1.85,
                  ),
                  child: Center(),
                ),
              ),
              Transform.rotate(
                angle: pi * 1.1,
                child: CustomPaint(
                  painter: ProgressRings(
                    completedPercentage: 0.24,
                    circleWidth: 50.0,
                    gradient: orangeGradient,
                    gradientStartAngle: 0.0,
                    gradientEndAngle: pi / 2,
                    progressStartAngle: 1.85,
                  ),
                  child: Center(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final innerColor = Color.fromRGBO(233, 242, 249, 1);
final shadowColor = Color.fromRGBO(220, 227, 234, 1);

const greenGradient = [
  Color.fromRGBO(223, 250, 92, 1),
  Color.fromRGBO(129, 250, 112, 1),
];
const turqoiseGradient = [
  Color.fromRGBO(91, 253, 199, 1),
  Color.fromRGBO(129, 182, 205, 1),
];

const redGradient = [
  Color.fromRGBO(255, 93, 91, 1),
  Color.fromRGBO(254, 154, 92, 1),
];
const orangeGradient = [
  Color.fromRGBO(251, 173, 86, 1),
  Color.fromRGBO(253, 255, 93, 1),
];
