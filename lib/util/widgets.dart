import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/typo.dart';
import 'dart:ui' as ui;
import 'data.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool expand;
  const GradientButton({super.key, required this.text, this.onPressed, this.expand = true});

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const ShapeDecoration(
          gradient: LinearGradient(colors: gradient),
          shape: StadiumBorder(),
        ),
        child: SizedBox(
          height: 50,
          width: expand ? size.width * .8 : null,
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              elevation: 0.5,
              maximumSize: Size.fromWidth(size.width * .85),
              minimumSize: Size.fromWidth(size.width * .4),
              //      fixedSize: Size.fromWidth(size.width * .85),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              visualDensity: VisualDensity.comfortable,
              backgroundColor: Color.fromRGBO(255, 255, 255, 0.05),
            ),
            child: Text(text, style: Poppins.bodyMedium.copyWith(fontWeight: FontWeight.w500)),
          ),
        ),
      );
}

class GradientButtonMini extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const GradientButtonMini({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const ShapeDecoration(
          gradient: LinearGradient(colors: gradient, transform: GradientRotation(pi / 3), stops: [0.2, 01]),
          shape: StadiumBorder(),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: StadiumBorder(),
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            visualDensity: VisualDensity.compact,
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.05),
          ),
          child: Text(text,
              style: TextStyle(
                  fontFamily: "poppins",
                  debugLabel: ' bodySmall',
                  inherit: false,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.1,
                  height: 1.33,
                  textBaseline: TextBaseline.alphabetic,
                  leadingDistribution: TextLeadingDistribution.even)),
        ),
      );
}

// Widget GradientIcon(Widget icon) => ShaderMask(
//     blendMode: BlendMode.srcIn,
//     shaderCallback: (Rect bounds) {
//       return ui.Gradient.linear(const Offset(4.0, 4.0), const Offset(24.0, 4.0), gradientr);
//     },
//     child: icon);
Widget GradientIcon(final Widget icon) => Container(
    alignment: Alignment.centerRight,
    // margin: EdgeInsets.only(left: size.width * .26),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: gradientr)),
    child: icon);

extension Gradient on Widget {
  Widget get textGradientr => ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return ui.Gradient.linear(const Offset(4.0, 4.0), const Offset(24.0, 4.0), gradientr);
      },
      child: this);
  Widget textGradient(bool applyGradient) => applyGradient
      ? ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) {
            return ui.Gradient.linear(const Offset(4.0, 4.0), const Offset(80, 8.0), gradient);
          },
          child: this)
      : this;
  Widget get textGradientf => ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return ui.Gradient.linear(const Offset(4.0, 4.0), const Offset(60, 8.0), gradient);
      },
      child: this);
  Widget get gradientOpec => ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return ui.Gradient.linear(const Offset(4.0, 4.0), const Offset(24.0, 4.0), gradientopec);
      },
      child: this);
  Widget get gradientIcon => Container(
      alignment: Alignment.centerRight,
      // margin: EdgeInsets.only(left: size.width * .26),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: gradientr)),
      child: this);

  Widget gradientOverlay(bool applyGradient) {
    if (applyGradient) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: gradientopec, // Specify your gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: this,
      );
    } else {
      return this; // Return the original widget without the gradient
    }
  }

  Widget get gradientContainer => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: const [0, 0.05, 0.95, 1],
            colors: const [primaryr, Color.fromARGB(100, 15, 13, 19), Color.fromARGB(100, 15, 13, 19), secondaryr],
            // begin: topAlignmentAnimation.value,
            // end: bottomAlignmentAnimation.value,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: this,
      );
}

final Widget check = Container(
  // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
  padding: const EdgeInsets.all(16),
  decoration: const ShapeDecoration(
    gradient: LinearGradient(colors: gradientr),
    shape: CircleBorder(),
  ),
  child: Icon(Icons.check_rounded, size: 64, color: Colors.white),
);
