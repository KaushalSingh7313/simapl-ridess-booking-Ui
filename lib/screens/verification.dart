import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/nav/ubottom.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

import '../asset_images.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  static const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  static const fillColor = Color.fromRGBO(243, 246, 249, 0);
  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  final defaultPinTheme = PinTheme(
    width: 52,
    height: 52,
    // textStyle: GoogleFonts.poppins(
    //   fontSize: 22,
    //   color: const Color.fromRGBO(30, 60, 87, 1),
    // ),
    decoration: BoxDecoration(
      color: const Color(0xFF151515),
      borderRadius: BorderRadius.circular(10),
    ),
  );
  @override
  Widget build(BuildContext context) {
    data = MediaQuery.of(context);
    return Material(
      child: DecoratedBox(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: bgLinear, begin: Alignment.topCenter, end: Alignment.bottomCenter),
              image: DecorationImage(image: AssetImage(bg), fit: BoxFit.fitHeight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: AnimatedSize(
                      duration: Durations.medium1,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Image.asset(
                          car,
                          fit: BoxFit.fitWidth,
                          scale: 5,
                          filterQuality: FilterQuality.high,
                          alignment: Alignment.topCenter,
                          width: size.width,
                          height: size.height * .45 - data.viewInsets.bottom * .5,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(logo),
                ],
              ),
              Gap(40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Verification', style: displayMediumsw),
                  Text('Please fill your detail to Login In your account.', style: bodySmall),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    length: 5,
                    controller: pinController,
                    focusNode: focusNode,
                    defaultPinTheme: defaultPinTheme,
                    validator: (value) {
                      return value == '2222' ? null : 'Pin is incorrect';
                    },
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    onCompleted: (pin) {
                      debugPrint('onCompleted: $pin');
                    },
                    onChanged: (value) {
                      debugPrint('onChanged: $value');
                    },
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: fillColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
              ),
              Form(
                  key: formKey,
                  child: GradientButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UNav(),
                          ))
                      //formKey.currentState!.validate()
                      ,
                      text: "Verify")),
            ],
          )),
    );
  }
}
