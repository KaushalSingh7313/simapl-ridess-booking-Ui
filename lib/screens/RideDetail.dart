import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RideDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Ride in Progress",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
