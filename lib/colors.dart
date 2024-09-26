import 'package:flutter/material.dart';

const Color primary = Color(0xFF3992B4);
const Color secondary = Color(0xFF832BD2);
const Color primaryr = Color(0xFF3992B4);
const Color secondaryr = Color(0xFF6454C5);
const Color primaryo = Color.fromARGB(125, 57, 145, 180);
const Color secondaryo = Color.fromARGB(125, 99, 86, 197);

const List<Color> bgLinear = [Color.fromRGBO(30, 30, 30, 1), Colors.black];
const List<Color> bgLinear2 = [Color.fromRGBO(24, 24, 24, 1), Colors.black];
const List<Color> bgLinear3 = [Color.fromRGBO(16, 16, 16, 1), Colors.black];
const List<Color> bgLinear4 = [Color.fromRGBO(14, 14, 14, 1), Color.fromRGBO(4, 4, 4, 1)];

const List<Color> gradient = [primary, secondary];
const List<Color> gradientr = [primaryr, secondaryr];
const List<Color> rgradientr = [secondaryr, primaryr, secondaryr];
const List<Color> gradientopec = [primaryo, secondaryo];

const List<Color> carGradient = [Color.fromARGB(128, 105, 79, 199), Color.fromARGB(128, 25, 1, 30)];
const List<Color> carGradient2 = [Color.fromARGB(128, 57, 145, 180), Color.fromARGB(128, 25, 1, 30)];
const List<Color> blueGradient = [Color.fromRGBO(27, 110, 208, 1), Color.fromRGBO(74, 179, 255, 1)];
const List<Color> carGradient3 = [
  Color.fromARGB(128, 105, 79, 199),
  Color.fromARGB(128, 25, 1, 30),
  Color.fromARGB(128, 25, 1, 30),
  Color.fromARGB(128, 57, 145, 180),
];
const List<Color> carGradientr = [
 secondary ,
  Color.fromARGB(128, 25, 1, 30),
  Color.fromARGB(128, 25, 1, 30),
primary
];
final Shader linearGradientShade = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: const <Color>[
    Color.fromRGBO(57, 146, 180, 1),
    Color.fromRGBO(57, 146, 180, 1),
    Color.fromRGBO(131, 43, 210, 1),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 20.0));
Shader linearGradientShader = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: const <Color>[
    Color.fromRGBO(57, 146, 180, 1),
    Color.fromRGBO(131, 43, 210, 1),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 20.0));
