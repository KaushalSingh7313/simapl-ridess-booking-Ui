import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:gap/gap.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Alignment> topAlignmentAnimation;
  late Animation<Alignment> bottomAlignmentAnimation;
  static List points = ["Lorem ipsum dolor", "Lorem ipsum dolor sit", 'Lorem ipsum dolor sit amet'];
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, lowerBound: 0.01, upperBound: 1.01, duration: const Duration(seconds: 4), animationBehavior: AnimationBehavior.preserve);
//     topAlignmentAnimation = TweenSequence<Alignment>([
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
//         weight: 1,
//       ), // TweenSequenceItem
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
//         weight: 1,
//       ), // TweenSequenceItem
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
//         weight: 1,
//       ), // TweenSequenceItem
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
//         weight: 1,
//       ), // TweenSequenceItem
//     ]
// // TweenSequenceItem

//         ).animate(controller);
//     bottomAlignmentAnimation = TweenSequence<Alignment>([
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
//         weight: 1,
//       ), // TweenSequenceItem
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
//         weight: 1,
//       ), // TweenSequenceItem
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
//         weight: 1,
//       ), // TweenSequenceItem
//       TweenSequenceItem<Alignment>(
//         tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
//         weight: 1,
//       ), // TweenSequenceItem
//     ]).animate(CurvedAnimation(parent: controller, curve: Curves.linear, reverseCurve: Curves.linear));

    controller.repeat();
    // for (Map<String, Object> element in recruiterServices) {
    //   services.addNonNull(Services.fromJson(element));
    // }
  } // TweenSequence

// TweenSequence
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
                //   shrinkWrap: true,
                itemBuilder: (contex, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: const [0, 0.05, 0.95, 1],
                        colors: const [primaryr, Color.fromARGB(100, 15, 13, 19), Color.fromARGB(100, 15, 13, 19), secondaryr],
                        // begin: topAlignmentAnimation.value,
                        // end: bottomAlignmentAnimation.value,
                        transform: GradientRotation(controller.value * 22 / 7)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Card(
                    elevation: 0.2,
                    color: const Color.fromARGB(250, 15, 13, 19),
                    margin: const EdgeInsets.all(1.6),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: SizedBox(
                      width: size.width * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              'Basic',
                              style: Poppins.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Essential Features",
                              style: Secondary.labelLarge,
                            ),
                            Gap(20),
                            ...points.map((e) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 4.5, right: 6),
                                        child: Icon(
                                          Icons.check_circle,
                                        ).textGradientr
                                        //GradientIcon(Icon( Icons.check_circle, color: primaryr, size: 20), primaryr, secondaryr, controller.value),
                                        ),
                                    SizedBox(
                                      width: size.width * 0.6,
                                      child: Text(
                                        e,
                                        maxLines: 5,
                                        softWrap: true,
                                      ),
                                    )
                                  ],
                                )),
                            Spacer(),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                children: const [
                                  TextSpan(text: "\$ 50", style: Poppins.headlineLarge),
                                  TextSpan(
                                      text: '/',
                                      style: TextStyle(
                                        textBaseline: TextBaseline.ideographic,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.8,
                                        color: Color(0xFF6D6D6D),
                                      )),
                                  TextSpan(text: 'Per Day', style: Secondary.bodyMedium),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                              child: GradientButton(text: "Choose"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }

  // Future<void> _launchUrl(final String url) async {
  //   if (!await launchUrl(Uri.parse(url))) {
  //     throw Exception('Could not launch $url');
  //   }
  // }
}
