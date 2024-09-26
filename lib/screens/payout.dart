import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PayOut extends StatelessWidget {
  const PayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarN(title: "Payout"),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(11, 14, 16, 0.5), // shadow color
                      blurRadius: 4, // shadow radius
                      offset: Offset(1.1, 2.20), // shadow offset
                      spreadRadius: 0.03, // The amount the box should be inflated prior to applying the blur
                      blurStyle: BlurStyle.normal // set blur style
                      ),
                ],
                gradient: LinearGradient(colors: const [Color.fromRGBO(18, 18, 18, 1), Color.fromRGBO(21, 21, 21, 1)]),
                border: GradientBoxBorder(
                  width: 0.8,
                  gradient: LinearGradient(colors: carGradientr, transform: GradientRotation(pi / 8)),
                ),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              children: [
                !index.isEven
                    ? Icon(
                        Icons.north_west_rounded,
                        color: Colors.redAccent,
                      )
                    : Icon(
                        Icons.south_east_rounded,
                      ).textGradientr,
                Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Payout",
                      style: Poppins.titleMedium,
                    ),
                    Text("11, Jul Mon", style: Secondary.bodyvSmall)
                  ],
                ),
                Spacer(),
                Text("${index.isEven ? '+' : '-'} \$200.00", style: Poppins.titleSmall.copyWith(color: index.isEven ? Colors.green : Colors.redAccent)),
              ],
            )),
      ),
    );
  }
}
