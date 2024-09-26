import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/component/avilable_rides.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';

class GetRide extends StatelessWidget {
  const GetRide({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          BoxDecoration(
              gradient: LinearGradient(
                  colors: bgLinear3,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
          ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Color.fromARGB(55, 15, 20, 23),
        appBar: AppbarG(),
        body: Image.asset(map),
        bottomSheet: ClipRRect(
          borderRadius: BorderRadius.vertical
            (top: Radius.circular(33)),
          child: AvilableRides(),
        ),
      ),
    );
  }
}
