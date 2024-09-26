import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fyc_ride/Notifier/ride_req.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/component/loading.dart';
import 'package:fyc_ride/component/rider_detail.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';

class PickedRide extends ConsumerWidget {
  const PickedRide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: bgLinear2, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Color.fromARGB(55, 15, 20, 23),
        appBar: AppbarG(),
        body: Image.asset(mapcar),
        bottomSheet: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: bgLinear4, begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.vertical(top: Radius.circular(33))),
            child: ref.watch(requestRideProvider).when(
                // loading: () => LoadingRide(),
                data: (data) => RiderDetail(),
                error: (error, stackTrace) => Text(error.toString()), loading: () {  })),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(right: 10, bottom: size.height * .14),
          child: FloatingActionButton(
            onPressed: () {},
            shape: CircleBorder(),
            backgroundColor: Color.fromRGBO(6, 6, 6, 0.95),
            child: Icon(Icons.my_location_rounded).textGradientr,
          ),
        ),
      ),
    );
  }

}
