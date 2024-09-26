import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/screens/login.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';

import '../asset_images.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: DecoratedBox(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: bgLinear,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                    image: AssetImage(bg),
                    fit: BoxFit.fitHeight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: AnimatedSize(
                        duration: Durations.medium1,
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: Image.asset(
                            car,
                            fit: BoxFit.fitWidth,
                            scale: 5,
                            filterQuality: FilterQuality.high,
                            alignment: Alignment.topCenter,
                            width: size.width,
                            height: size.width * 1.4,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(logo),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric
                    (horizontal: 28, vertical: 20),
                  child: FittedBox(
                    child: const Text('Make your life\nmuch easier with\nFYC,s Rides',
                        style: TextStyle(
                            fontVariations: [FontVariation('wght', 480), FontVariation('wdth', 718)],
                            fontSize: 40,
                            letterSpacing: -.4,
                            height: 1.15,
                            textBaseline: TextBaseline.alphabetic,
                            leadingDistribution: TextLeadingDistribution.even)),
                  ),
                ),
                FilledButton.icon(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      )),
                  label: Padding(
                    padding: EdgeInsets.only
                      (left: size.width * .2, right: size.width * .2),
                    child: Text(
                      "Get Started",
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
                          gradient: LinearGradient
                            (begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: gradient)),
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
                )
              ],
            )),
      ),
    );
  }
}
