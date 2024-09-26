import 'package:flutter/material.dart';

const Color color = Color.fromARGB(255, 178, 178, 178);
const Color white = Colors.white;
const TextStyle displayLarge = TextStyle(
    debugLabel: ' displayLarge',
    inherit: false,
    fontSize: 57.0,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    height: 1.12,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle displayMedium = TextStyle(
    debugLabel: ' displayMedium',
    inherit: false,
    fontSize: 45.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    height: 1.16,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle displayMediumsw = TextStyle(
    fontVariations: [FontVariation('wght', 574), FontVariation('wdth', 818)],
    fontSize: 38.0,
    // fontWeight: FontWeight.w500,
    letterSpacing: 0.0,
    height: 1.22,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle displaySmalls = TextStyle(
    debugLabel: ' displaySmall',
    inherit: false,
    fontSize: 36.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    height: 1.22,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle displaySmallsw = TextStyle(
    debugLabel: ' displaySmall',
    fontVariations: [FontVariation('wght', 574), FontVariation('wdth', 818)],
    fontSize: 36.0,
    // fontWeight: FontWeight.w500,
    letterSpacing: 0.0,
    height: 1.22,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle headlineLargew = TextStyle(
    debugLabel: ' headlineLarge',
    inherit: false,
    fontSize: 32.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.0,
    fontVariations: [FontVariation('wght', 374), FontVariation('wdth', 118)],
    height: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle headlineLarge = TextStyle(
    debugLabel: ' headlineLarge',
    inherit: false,
    fontSize: 32.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    height: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle headlineMedium = TextStyle(
    debugLabel: ' headlineMedium',
    inherit: false,
    fontSize: 28.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    height: 1.29,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);

const TextStyle headlineSmall = TextStyle(
    debugLabel: ' headlineSmall',
    inherit: false,
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle titleBigw = TextStyle(
  fontSize: 24,
  fontVariations: [FontVariation('wght', 562), FontVariation('wdth', 818)],
  letterSpacing: -0.4,
  color: white,
);
const TextStyle titleLarge = TextStyle(
    debugLabel: ' titleLarge',
    inherit: false,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0,
    height: 1.27,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle titleMedium = TextStyle(
    debugLabel: ' titleMedium',
    inherit: false,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.50,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle titleSmall = TextStyle(
    debugLabel: ' titleSmall',
    inherit: false,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle labelLarge = TextStyle(
    debugLabel: ' labelLarge',
    inherit: false,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle labelMedium = TextStyle(
    debugLabel: ' labelMedium',
    inherit: false,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle labelSmalls = TextStyle(
    debugLabel: ' labelSmall',
    inherit: false,
    fontSize: 11.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle bodyLarge = TextStyle(
    debugLabel: ' bodyLarge',
    //   inherit: false,
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    height: 1.50,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle bodyMedium = TextStyle(
    debugLabel: ' bodyMedium',
    //  inherit: false,
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.25,
    height: 1.43,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
const TextStyle bodySmall = TextStyle(
    debugLabel: ' bodySmall',
    fontFamily: "poppins",
    inherit: false,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.33,
    wordSpacing: -1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);

class Secondary {
  static const TextStyle displayLarge = TextStyle(
      color: color,
      debugLabel: ' displayLarge',
      inherit: false,
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle displayMedium = TextStyle(
      color: color,
      debugLabel: ' displayMedium',
      inherit: false,
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.16,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle displaySmalls = TextStyle(
      color: color,
      debugLabel: ' displaySmall',
      inherit: false,
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.22,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineLarge = TextStyle(
      color: color,
      debugLabel: ' headlineLarge',
      inherit: false,
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.25,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineMedium = TextStyle(
      color: color,
      debugLabel: ' headlineMedium',
      inherit: false,
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.29,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineSmall = TextStyle(
      color: color,
      debugLabel: ' headlineSmall',
      inherit: false,
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleLarge = TextStyle(
      color: color,
      debugLabel: ' titleLarge',
      inherit: false,
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.27,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleMedium2 = TextStyle(
      fontFamily: "poppins",
      color: color,
      debugLabel: ' titleMedium',
      inherit: false,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleMedium = TextStyle(
      fontFamily: "poppins",
      color: color,
      debugLabel: ' titleMedium',
      inherit: false,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleSmall = TextStyle(
      color: color,
      debugLabel: ' titleSmall',
      inherit: false,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle labelLarge = TextStyle(
      color: color,
      debugLabel: ' labelLarge',
      inherit: false,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle labelMedium = TextStyle(
      color: color,
      debugLabel: ' labelMedium',
      inherit: false,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle labelSmalls = TextStyle(
      color: color,
      debugLabel: ' labelSmall',
      inherit: false,
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodyLarge = TextStyle(
      color: color,
      debugLabel: ' bodyLarge',
      inherit: false,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.4,
      height: 1.20,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodyMedium = TextStyle(
      color: color,
      debugLabel: ' bodyMedium',
      inherit: false,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodySmall = TextStyle(
      color: color,
      debugLabel: ' bodySmall',
      inherit: false,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodyvSmall = TextStyle(
      color: color,
      debugLabel: ' bodySmall',
      inherit: false,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
}

class Poppins {
  static const TextStyle displayLarge = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' displayLarge',
      inherit: false,
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle displayMedium = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' displayMedium',
      inherit: false,
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.16,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle displaySmalls = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' displaySmall',
      inherit: false,
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.22,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineLargew = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineLarge',
      inherit: false,
      fontSize: 44,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      height: 1.25,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineLarge2ww = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineLarge',
      inherit: false,
      fontSize: 38.0,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.0,
      height: 1.25,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineLarge = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineLarge',
      inherit: false,
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.25,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineMedium = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineMedium',
      inherit: false,
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.29,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineMediumw = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineMedium',
      inherit: false,
      fontSize: 26,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
      height: 1.29,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle headlineSmall = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineSmall',
      inherit: false,
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);

  static const TextStyle headlineSmallw = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' headlineSmall',
      inherit: false,
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleLargew = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' titleLarge',
      inherit: false,
      fontSize: 22.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      height: 1.27,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleLarge = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' titleLarge',
      inherit: false,
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.27,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);

  static const TextStyle titleMedium3 = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' titleMedium',
      inherit: false,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleMedium2 = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' titleMedium',
      inherit: false,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleMedium = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' titleMedium',
      inherit: false,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleSmall = TextStyle(
      fontFamily: "poppins",
      debugLabel: 'titleSmall',
      inherit: false,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titlevSmalls = TextStyle(
      fontFamily: "poppins",
      debugLabel: 'titleSmall',
      //inherit: false,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle titleSmalls = TextStyle(
      fontFamily: "poppins",
      color: color,
      debugLabel: 'titleSmall',
      //inherit: false,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle labelLarge = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' labelLarge',
      inherit: false,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle labelMedium = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' labelMedium',
      inherit: false,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle labelSmalls = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' labelSmall',
      inherit: false,
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodyLarge = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' bodyLarge',
      inherit: false,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodyMedium = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' bodyMedium',
      inherit: false,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      wordSpacing: 0,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodySmall = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' bodySmall',
      inherit: false,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
  static const TextStyle bodyvSmall = TextStyle(
      fontFamily: "poppins",
      debugLabel: ' bodySmall',
      inherit: false,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.4,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even);
}

final Shader linearShader = const LinearGradient(colors: <Color>[
  Color.fromRGBO(144, 2, 255, 1),
  Color.fromRGBO(186, 98, 255, 1),
]).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 10.0));

const TextStyle button = TextStyle(
    fontFamily: "poppins",

    // inherit: false,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.33,
    color: Colors.white,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even);
