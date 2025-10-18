import 'package:flutter/material.dart';
import 'package:flutter_charts_demo/neumorphic_pie/neumorphic_pie.dart';

class MiddleRing extends StatelessWidget {
  const MiddleRing({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
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
      child: Center(
        child: Container(
          height: width * 0.3,
          width: width * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
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
        ),
      ),
    );
  }
}
