import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/dotted_line.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:gap/gap.dart';

import 'choose_rides.dart';

class EnterLoation extends StatefulWidget {
  const EnterLoation({super.key});

  @override
  State<EnterLoation> createState() => _EnterLoationState();
}

class _EnterLoationState extends State<EnterLoation> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: bgLinear2, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Color.fromARGB(55, 15, 20, 23),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: DrawerButton(),
          actions: [
            IconButton(
              icon: const Icon(CupertinoIcons.bell),
              //icon: const Icon(Icons.notifications_outlined),
              tooltip: 'Notifications',
              onPressed: () {},
            ),
            CircleAvatar(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.radio_button_checked_outlined,
                  size: 28,
                ).textGradientr,
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Pickup",
                      style: Secondary.bodyLarge,
                    ),
                    Text(
                      "My current location",
                      style: Poppins.titleMedium2,
                    ),
                  ],
                )
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
                      height: 65,
                      child: CustomPaint(
                        size: Size(5, 100),
                        painter: DottedLinePainter(thickness: 2.8, color: Color.fromRGBO(58, 58, 59, 1), gapWidth: 6),
                      ),
                    ),
                    Icon(
                      Icons.location_pin,
                      size: 28,
                    ).textGradientr,
                  ],
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width - 98,
                      child: Divider(
                        height: 45,
                        color: Color.fromRGBO(247, 247, 247, 0.05),
                      ),
                    ),
                    Text(
                      "Drop-off",
                      style: Secondary.bodyLarge,
                    ),
                    Gap(8),
                    SizedBox(
                      width: size.width - 108,
                      height: 45,
                      child: SearchBar(
                        elevation: WidgetStatePropertyAll(0.5),
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                          horizontal: 10,
                        )),
                        backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(247, 247, 247, 0.04)),
                        leading: Icon(
                          Icons.search,
                          color: Color(0xFF4E4E58),
                        ),
                        hintText: "Search location",
                        hintStyle: WidgetStatePropertyAll(Secondary.bodyMedium),
                      ),
                    )
                  ],
                )
              ],
            )
          ]),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30),
          child: GradientButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetRide(),
                  ))
              //formKey.currentState!.validate()
              ,
              text: "Continue"),
        ),
      ),
    );
  }
}
