/// Draws a dotted horizontal line on a canvas.
///
/// This [CustomPainter] implementation draws a dotted horizontal line on the
/// provided [Canvas]. The line is composed of a series of short line segments
/// spaced 15 pixels apart, with a stroke width of 2 pixels and rounded caps.
/// The color of the dots is set to black.
///
/// This painter can be used as part of a [CustomPaint] widget to render the
/// dotted line in a Flutter app.
library;

import 'package:flutter/material.dart';

class DrawDottedhorizontalline extends CustomPainter {
  final Paint _paint = Paint();
  DrawDottedhorizontalline() {
    _paint.color = Colors.black; //dots color
    _paint.strokeWidth = 2; //dots thickness
    _paint.strokeCap = StrokeCap.round; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -300; i < 300; i = i + 15) {
      // 15 is space between dots
      if (i % 3 == 0) canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DottedLineHorizontalPainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashHeight;
  final double dashSpacing;

  DottedLineHorizontalPainter({
    required this.color,
    required this.dashWidth,
    required this.dashHeight,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    double startX = 0.0;

    while (startX < size.width) {
      final RRect roundedRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(startX, 0, dashWidth, dashHeight),
        Radius.circular(12),
      );
      canvas.drawRRect(roundedRect, paint);
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DottedLine extends CustomPainter {
  final double dashLength; // Length of each dash (dot)
  final double gapLength; // Length of the space between dashes
  final Color color; // Color of the dashes
  final double thickness; // Thickness of the dashes

  DottedLine({
    this.dashLength = 4.0,
    this.gapLength = 4.0,
    this.color = Colors.black,
    this.thickness = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round;

    final path = Path();
    double currentPosition = 0.0; // Starting position

    while (currentPosition < size.height) {
      path.addRect(Rect.fromLTWH(0.0, currentPosition, thickness, dashLength));
      currentPosition += dashLength + gapLength;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class DottedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double gapWidth;
  final double thickness;

  DottedLinePainter({
    this.color = Colors.grey,
    this.dashWidth = 5.0,
    this.gapWidth = 5.0,
    this.thickness = 1.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;

    double currentPosition = 0.0;
    while (currentPosition < size.height) {
      final endPosition = currentPosition + dashWidth;
      canvas.drawLine(
        Offset(size.width / 2, currentPosition),
        Offset(size.width / 2, endPosition > size.height ? size.height : endPosition),
        paint,
      );
      currentPosition += dashWidth + gapWidth;
    }
  }

  @override
  bool shouldRepaint(DottedLinePainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.dashWidth != dashWidth || oldDelegate.gapWidth != gapWidth;
  }
}
