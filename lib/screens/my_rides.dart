import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/dotted_line.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:fyc_ride/util/widgets/drawer.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MyRides extends StatelessWidget {
  const MyRides({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(gradient: LinearGradient(colors: bgLinear2, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: const AppbarD(
          title: "My Rides",
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: 3,
          itemBuilder: (context, index) => Container(
            width: size.width,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(11, 14, 16, 0.5), // shadow color
                      blurRadius: 4, // shadow radius
                      offset: Offset(1.1, 2.20), // shadow offset
                      spreadRadius: 0.03, // The amount the box should be inflated prior to applying the blur
                      blurStyle: BlurStyle.normal // set blur style
                      ),
                ],
                gradient: LinearGradient(colors: [Color.fromRGBO(18, 18, 18, 1), Color.fromRGBO(21, 21, 21, 1)]),
                border: GradientBoxBorder(
                  gradient: LinearGradient(colors: carGradientr, transform: GradientRotation(pi / 8)),
                ),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.radio_button_checked_outlined,
                      size: 24,
                    ).textGradientr,
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pickup",
                          style: Secondary.bodyLarge,
                        ),
                        Text(
                          "MG Road",
                          style: Poppins.titleMedium,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "+\$20.00",
                        textAlign: TextAlign.center,
                        style: Poppins.titleLargew,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          child: CustomPaint(
                            size: const Size(5, 50),
                            painter: DottedLinePainter(thickness: 2, color: const Color.fromRGBO(58, 58, 59, 1), gapWidth: 4),
                          ),
                        ),
                        const Icon(
                          Icons.location_pin,
                          size: 26,
                        ).textGradientr,
                      ],
                    ),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: size.width * .38,
                              child: Divider(
                                height: 40,
                                color: Color.fromRGBO(247, 247, 247, 0.05),
                              ),
                            ),
                            Gap(size.width * .07),
                            Icon(
                              Icons.calendar_month_outlined,
                              size: 18,
                              color: color,
                            ),
                            Text("15 Feb 2024", style: Secondary.bodySmall)
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Drop-off",
                                  style: Secondary.bodyLarge,
                                ),
                                Text(
                                  "RJ Mall , 5th Feet",
                                  style: Poppins.titleMedium,
                                ),
                              ],
                            ),
                            Gap(size.width * .06 - 1),
                            SizedBox(
                              height: 30,
                              child: FilledButton(
                                onPressed: () {},
                                style: FilledButton.styleFrom(
                                    backgroundColor: Color.fromARGB(236, 31, 31, 31), padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0)),
                                child: Text(
                                  "Veiw Details",
                                  style: Secondary.bodySmall,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
