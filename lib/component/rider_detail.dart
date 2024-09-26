import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/dotted_line.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:gap/gap.dart';

class RiderDetail extends StatelessWidget {
  const RiderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    bool isVisble = true;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: StatefulBuilder(
        builder: (context, setState) => AnimatedSize(
          duration: Durations.medium1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cab Info",
                    style: Poppins.labelLarge,
                  ),
                  FilledButton(
                    onPressed: () => setState(
                      () => isVisble = !isVisble,
                    ),
                    style: FilledButton.styleFrom(
                        minimumSize: Size(60, 30),
                        backgroundColor: const Color.fromARGB(200, 30, 30, 30),
                        padding: EdgeInsets.zero,
                        fixedSize: Size(40, 10)),
                    child: Icon(
                      isVisble ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up_rounded,
                      color: Colors.white,
                      size: 26,
                    ),
                  )
                ],
              ),
              Visibility(
                visible: isVisble,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Driver Info",
                      style: Poppins.labelLarge,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6, bottom: 10, left: 2.5, right: 2.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                          ),
                          Gap(6),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Driver Name",
                                style: Poppins.titleSmalls,
                              ),
                              Gap(1),
                              Row(
                                children: [
                                  Text(
                                    "Jhon Mark",
                                    style: Poppins.titleMedium,
                                  ),
                                  Gap(8),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD700),
                                    size: 20,
                                  ),
                                  Gap(2),
                                  Text(
                                    "4.6",
                                    style: Poppins.titleSmall,
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                size: 28,
                              ).gradientIcon),
                          Spacer(
                            flex: 2,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.chat_bubble_2, size: 28).gradientIcon,
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Cab Info",
                      style: Poppins.labelLarge,
                    ),
                    Gap(8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Image.asset(
                          excar,
                          width: 80,
                          fit: BoxFit.fitWidth,
                        ),
                        Column(
                          children: const [
                            Text(
                              "Vehical Type",
                              style: Poppins.labelMedium,
                            ),
                            Text(
                              "Sedan",
                              style: Poppins.titleMedium,
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Vehical Condition",
                              style: Poppins.labelMedium,
                            ),
                            Text(
                              "Better",
                              style: Poppins.titleMedium,
                            )
                          ],
                        )
                      ]),
                    ),
                    Divider(
                      indent: 90,
                      color: Color.fromARGB(25, 255, 255, 255),
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                        Gap(80),
                        Column(
                          children: [
                            Text("Vehical Number", style: Poppins.labelMedium),
                            Text("LUX2022", style: Poppins.titleMedium)
                          ],
                        ),
                        Column(
                          children: [
                            Text("Vehical Color", style: Poppins.labelMedium),
                            Text("White", style: Poppins.titleMedium)
                          ],
                        )
                      ]),
                    ),
                    Divider(
                      height: 26,
                      indent: 90,
                      color: Color.fromARGB(25, 255, 255, 255),
                      endIndent: 10,
                    ),
                    Gap(5),
                    SizedBox(
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.radio_button_checked_outlined,
                                size: 28,
                              ).textGradientr,
                              const Gap(4),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Pickup",
                                    style: Secondary.bodyMedium,
                                  ),
                                  Text(
                                    "MG Road",
                                    style: Poppins.bodySmall,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CustomPaint(
                              size: Size(52, 4),
                              painter: DottedLineHorizontalPainter(
                                color: Color.fromRGBO(58, 58, 59, 1),
                                dashWidth: 6,
                                dashHeight: 2,
                                dashSpacing: 2,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 28,
                              ).textGradientr,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Drop-off",
                                    style: Secondary.bodyMedium,
                                  ),
                                  Gap(4),
                                  Text(
                                    "RJ Mall , 5th Feet",
                                    style: Poppins.bodySmall,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      endIndent: 30,
                      indent: 30,
                      color: Color.fromARGB(25, 255, 255, 255),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        "Verification Pin",
                        style: Poppins.labelLarge,
                      ),
                    ),
                    Card.filled(
                      color: Color.fromARGB(55, 64, 72, 75),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "52368",
                          style: Poppins.headlineSmall.copyWith(letterSpacing: 10),
                        ),
                      ),
                    ),
                    Gap(10)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
