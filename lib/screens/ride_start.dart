import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:gap/gap.dart';

import 'RecivedPayment.dart';
import 'RideDetail.dart';

// Define the rideProgressProvider
final rideProgressProvider = StateProvider<int>((ref) {
  return 0; // Initial state for ride progress
});

class RideStart extends StatelessWidget {
  const RideStart({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: bgLinear2,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Color.fromARGB(55, 15, 20, 23),
        appBar: AppbarG(),
        body: Image.asset(mapcar),
        bottomSheet: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: bgLinear4,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
          ),
          child: Consumer(builder: (context, ref, child) {
            // Watch the rideProgressProvider to get the current state
            final rideProgress = ref.watch(rideProgressProvider);

            switch (rideProgress) {
              case 3:
                return RideDetail(); // Display RideDetail widget
              case 4:
                return SizedBox(
                  width: MediaQuery.of(context).size.width, // Get screen width
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: check, // Some check widget
                        ),
                        Text(
                          "Ride Completed Successfully",
                          style: Poppins.titleMedium,
                        ),
                        Gap(20),
                      ],
                    ),
                  ),
                );
              default:
                return const Text('Default Text'); // Default case
            }
          }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            right: 10,
            bottom: MediaQuery.of(context).size.height * 0.14,
          ),
          child: FloatingActionButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => RecivedPayment(),
            ),
            shape: const CircleBorder(),
            backgroundColor: const Color.fromRGBO(6, 6, 6, 0.95),
            child: const Icon(Icons.my_location_rounded),
          ),
        ),
      ),
    );
  }
}
