import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecivedPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Payment Received"),
      content: Text("Your payment has been successfully received."),
      actions: [
        TextButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
