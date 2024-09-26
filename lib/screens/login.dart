import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/screens/verification.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';

import '../asset_images.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    bool accepeted = false;
    return Material(
      child: SingleChildScrollView(
        child: DecoratedBox(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: bgLinear,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(image: AssetImage(bg),
                    fit: BoxFit.fitHeight)),
            child: Column(
              children: [
                Image.asset(
                  car,
                  fit: BoxFit.fitWidth,
                  scale: 5,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.bottomLeft,
                  width: size.width,
                  height: size.height * .5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Image.asset(logo),
                ),
                DecoratedBox(
                    // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    // padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const ShapeDecoration(
                      gradient: LinearGradient(colors: gradient),
                      shape: StadiumBorder(),
                    ),
                    child: TextButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: const WidgetStatePropertyAll(0.5),
                          fixedSize: WidgetStatePropertyAll(Size.fromWidth(size.width * .85)),
                          padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 12.5)),
                          visualDensity: VisualDensity.comfortable,
                          backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(255, 255, 255, 0.05)),
                        ),
                        label: const Text("Continue With Mobile Number", style: button),
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ))),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Or"),
                ),
                FilledButton.icon(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verification(),
                      )),
                  style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size.fromWidth(size.width * .85)),
                    visualDensity: VisualDensity.comfortable,
                    backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(255, 255, 255, 0.05)),
                  ),
                  label: const Text(
                    "Continue With Google",
                    style: button,
                  ),
                  icon: Image.asset(
                    google,
                    width: 34,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StatefulBuilder(
                          builder: (BuildContext context, setState) => Radio(
                              value: true,
                              groupValue: accepeted,
                              toggleable: true,
                              activeColor: Colors.white,
                              onChanged: (boo) => setState(() => accepeted = boo ?? !accepeted))),
                       Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(style: bodySmall, children: [
                          TextSpan(text: 'Agree to '),
                          TextSpan(
                              text: 'Term & Condition',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              )),
                          TextSpan(
                            text: ' &Privacy Policy ',
                          ),

                        ]),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
