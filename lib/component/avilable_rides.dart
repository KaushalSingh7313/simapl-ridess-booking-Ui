import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fyc_ride/Notifier/find_ride.dart';
import 'package:fyc_ride/Notifier/ride_req.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/screens/picked_ride.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/dotted_line.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/gradient_borders.dart';

final selectedIndexProvider = AutoDisposeStateProvider<int>((ref) => -1);

class AvilableRides extends StatelessWidget {
  const AvilableRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: ColoredBox(
              color: const Color.fromARGB(200, 16, 16, 16),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: SizedBox(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                "MG Road",
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
                              Gap(4),
                              Text(
                                "RJ Mall , 5th Feet",
                                style: Poppins.titleMedium2,
                              ),
                            ],
                          )
                        ],
                      ),
                      Gap(25),
                      Text(
                        "Available Rides",
                        style: Poppins.titleMedium3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Consumer(
          builder: (context, ref, child) {
            final sindex = ref.watch(selectedIndexProvider);

            return ref.watch(findRideProvider).when(
                error: (e, st) => Scaffold(body: Center(child: Text(e.toString()))),
                loading: () =>
                    Padding(padding: EdgeInsets.symmetric(vertical: 200), child: Center(child: CircularProgressIndicator())),
                data: (data) => Column(
                      children: [
                        SizedBox(
                            height: size.height * .45,
                            child: ListView.builder(
                              physics: ScrollPhysics(),
                              padding: EdgeInsets.only(top: 20, bottom: 10, left: 15, right: 15),
                              itemCount: 10,
                              // shrinkWrap: true,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  selected: index == sindex,
                                  onTap: () => ref.read(selectedIndexProvider.notifier).state = index,

                                  //   style: ListTileStyle.list,
                                  shape: GradientOutlineInputBorder(
                                    width: 2,
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      end: Alignment.bottomRight,
                                      colors: carGradient3,
                                    ),
                                  ),
                                  //   tileColor: Color.fromRGBO(255, 255, 255, 0.02),
                                  leading: Image.asset(
                                    excar,
                                    width: 80,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  title: Text(
                                    "Micro",
                                    style: Poppins.titleMedium,
                                  ),
                                  subtitle: Text(
                                    "4+1 Person",
                                    style: Secondary.bodySmall,
                                  ),
                                  trailing: Text(
                                    "\$20.00",
                                    style: Poppins.bodyMedium,
                                  ),
                                ).gradientOverlay(index == sindex),
                              ),
                            )),
                        if (sindex != -1) ...[
                          Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: GradientButton(
                                  text: "Confirm & Book",
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => PickedRide()));
                                    ref.read(requestRideProvider.notifier).fetchData();
                                  }))
                        ]
                      ],
                    ));
          },
        ),
      ],
    );
  }
}
