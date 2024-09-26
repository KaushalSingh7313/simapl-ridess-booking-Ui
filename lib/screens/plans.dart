import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/nav/ubottom.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';

import '../asset_images.dart';
import 'service.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: bgLinear, begin: Alignment.topCenter, end: Alignment.bottomCenter),
              image: DecorationImage(image: AssetImage(bg), fit: BoxFit.fitHeight)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(text: 'We offer ', style: headlineLargew),
                      TextSpan(
                        text: 'Best Plans',
                        style: headlineLargew.copyWith(foreground: Paint()..shader = linearGradientShader),
                      ),
                      TextSpan(text: '\nFor You', style: headlineLargew),
                    ],
                  ),
                ),
                ServicesWidget(),
                Spacer(),
                FilledButton.icon(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UNav(),
                      )),
                  label: Padding(
                    padding: EdgeInsets.only(left: size.width * .2, right: size.width * .2),
                    child: Text(
                      "Ski For Now",
                      textAlign: TextAlign.center,
                      style: button,
                    ),
                  ),
                  icon: Container(
                      alignment: Alignment.centerRight,
                      // margin: EdgeInsets.only(left: size.width * .26),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: gradient)),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 24,
                      )),
                  iconAlignment: IconAlignment.end,
                  style: ButtonStyle(
                      alignment: Alignment.centerRight,
                      maximumSize: WidgetStatePropertyAll(Size.fromWidth(size.width * .85)),
                      fixedSize: WidgetStatePropertyAll(Size.fromWidth(size.width * .85)),
                      backgroundColor: WidgetStatePropertyAll(Colors.white10),
                      padding: WidgetStatePropertyAll(EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        right: 5,
                      ))),
                ),
              ],
            ),
          )),
    );
  }
}
