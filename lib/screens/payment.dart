import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:fyc_ride/util/widgets/drawer.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'payout.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  static ValueNotifier<bool> isWeekly = ValueNotifier(true);
  static ValueNotifier<int> sindex = ValueNotifier(2);
  static const List<int> p = [20, 50, 40, 70, 60, 80, 10];
  static const List<String> d = ['Mon', "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppbarD(title: "Payment"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ValueListenableBuilder(
            valueListenable: isWeekly,
            builder: (context, value, child) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(30),
                    Text("Total Earnings", style: Secondary.labelLarge),
                    Text("\$25,625.00", style: Poppins.headlineLarge2ww),
                    Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(36),
                          splashColor: Colors.white10,
                          splashFactory: InkSparkle.splashFactory,
                          onTap: () {
                            isWeekly.value = true;
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            child: Column(
                              children: [
                                Text("Weekly", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: Poppins.bodyLarge)
                                    .textGradient(value),
                                Container(
                                  height: 2,
                                  width: 30,
                                  margin: EdgeInsets.only(top: 1),
                                  decoration: ShapeDecoration(shape: StadiumBorder(), gradient: value ? LinearGradient(colors: gradientr) : null),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(36),
                          splashColor: Colors.white10,
                          splashFactory: InkSparkle.splashFactory,
                          onTap: () {
                            isWeekly.value = false;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            child: Column(
                              children: [
                                Text("Monthly", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: Poppins.bodyLarge)
                                    .textGradient(!value),
                                Container(
                                  height: 2,
                                  width: 30,
                                  margin: EdgeInsets.only(top: 1),
                                  decoration: ShapeDecoration(shape: StadiumBorder(), gradient: !value ? LinearGradient(colors: gradientr) : null),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    Align(alignment: Alignment.centerLeft, child: Text("Aug 01 - Sep 30", style: Secondary.labelLarge)),
                    Gap(5),
                    SizedBox(
                      height: 126,
                      child: ValueListenableBuilder(
                          valueListenable: sindex,
                          builder: (context, value, child) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () => sindex.value = index,
                                splashFactory: InkSparkle.splashFactory,
                                splashColor: const Color.fromARGB(2, 255, 255, 255),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (value == index) ...[
                                      Text(
                                        "\$650",
                                        style: Poppins.bodyMedium,
                                      ).textGradientf
                                    ],
                                    Container(
                                      margin: EdgeInsets.fromLTRB(9, 6, 10, 4),
                                      height: p[index].toDouble(),
                                      width: 28,
                                      decoration:
                                          BoxDecoration(gradient: value == index ? LinearGradient(colors: gradientr) : LinearGradient(colors: gradientopec)),
                                    ),
                                    Text(d[index], style: Secondary.bodySmall).textGradient(value == index)
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Gap(35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Online",
                          style: Poppins.bodySmall,
                        ),
                        Text(
                          "16h 18m",
                          style: Poppins.bodySmall,
                        ),
                      ],
                    ),
                    Gap(25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Trips",
                          style: Poppins.bodySmall,
                        ),
                        Text(
                          "2,580",
                          style: Poppins.bodySmall,
                        ),
                      ],
                    ),
                    Container(
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
                          children: const [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Earning of the week",
                                  style: Poppins.titleMedium,
                                ),
                                Text("Your Earning will credited By End of Week", style: Secondary.bodyvSmall)
                              ],
                            ),
                            Spacer(),
                            Text("\$200.00", style: Poppins.titleMedium),
                          ],
                        )),
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(top: 20),
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
                          children: const [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balance: \$5,000.00",
                                  style: Poppins.titleMedium,
                                ),
                                Text("current Balance", style: Secondary.bodyvSmall)
                              ],
                            ),
                            Spacer(),
                            GradientButtonMini(
                              text: "Cash Out",
                            ),
                          ],
                        )),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Payout",
                          style: Poppins.titleMedium,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PayOut(),
                              )),
                          child: Text(
                            'Veiw',
                            style: Secondary.bodySmall,
                          ),
                        )
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: NeverScrollableScrollPhysics(),
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
                              Text("${index.isEven ? '+' : '-'} \$200.00",
                                  style: Poppins.titleSmall.copyWith(color: index.isEven ? Colors.green : Colors.redAccent)),
                            ],
                          )),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
