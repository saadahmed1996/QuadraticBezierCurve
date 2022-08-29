import 'package:flutter/material.dart';
import 'package:quadratic_bezier_curve/wave_clipper.dart';

class QuadraticBezierCurve extends StatelessWidget {
  const QuadraticBezierCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quadratic Bezier Curve"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Colors.black,
                  height: 200,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepPurple,
                height: 180,
                child: Text(
                  "Wave Clipper",
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
