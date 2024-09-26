import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: bgLinear2, begin: Alignment.topCenter,
              end: Alignment.bottomCenter)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppbarN(title: ""),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Account',
                    style: Poppins.titleLargew,
                  ),
                  Column(
                    children: [
                      Text(
                        "50",
                        style: Poppins.titleLargew,
                      ),
                      Text(
                        'Total Completed\nRides',
                        style: Poppins.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle),
                padding: EdgeInsets.all(4),
                child: CircleAvatar(
                  radius: 56,
                ),
              ),
              Gap(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Jackson Wales",
                    style: Poppins.headlineMediumw,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Jackson500@gmail.com",
                        style: Secondary.bodySmall,
                      ),
                      Gap(8),
                      Text(
                        "4.9",
                        style: Poppins.titleMedium,
                      ),
                      Gap(2),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFD700),
                        size: 26,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(10),
              FilledButton.icon(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    backgroundColor: Color.fromRGBO(
                        255, 255, 255, 0.08),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: 40)
                ),
                label: Text("Edit Profile"),
                icon: Icon(Icons.edit_square),
              ),
              Gap(20),
              SizedBox(
                height: 180,
                width: size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: size.width - 32,
                        height: 130,
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(11, 14, 16, 0.5),
                                  // shadow color
                                  blurRadius: 4, // shadow radius
                                  offset: Offset(1.1, 2.20),
                                  // shadow offset
                                  spreadRadius: 0.03,
                                  // The amount the box should be inflated prior to applying the blur
                                  blurStyle: BlurStyle.normal // set blur style
                                  ),
                            ],
                            gradient: LinearGradient(
                                colors: const [
                                  Color.fromRGBO(
                                      18, 18, 18, 1),
                                  Color.fromRGBO(21, 21, 21, 1)
                                ]
                            ),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(
                                  colors: carGradientr,
                                  transform: GradientRotation(pi / 8)
                              ),
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(12)
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Brand",
                                  style: bodyLarge,
                                ),
                                Text(
                                  "Fortuner",
                                  style: Poppins.titleSmall,
                                ),
                              ],
                            ),
                            Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Vehical Number",
                                  style: bodyLarge,
                                ),
                                Text(
                                  "MH00370400",
                                  style: Poppins.titleSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        excar,
                        width: 180,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width - 32,
                height: 120,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(11, 14, 16, 0.5),
                          // shadow color
                          blurRadius: 4,
                          // shadow radius
                          offset: Offset(1.1, 2.20),
                          // shadow offset
                          spreadRadius: 0.03,
                          // The amount the box should be inflated prior to applying the blur
                          blurStyle: BlurStyle.normal // set blur style
                          ),
                    ],
                    gradient: LinearGradient(
                        colors: const [
                          Color.fromRGBO(18, 18, 18, 1),
                          Color.fromRGBO(21, 21, 21, 1)
                        ]),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                          colors: carGradientr,
                          transform: GradientRotation(pi / 8)
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(12)
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Phone",
                          style: bodyLarge,
                        ),
                        Text(
                          "+91 7895843215",
                          style: Poppins.titleSmall,
                        ),
                      ],
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: bodyLarge,
                        ),
                        Text(
                          "Jackson500@gmail.com",
                          style: Poppins.titleSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
