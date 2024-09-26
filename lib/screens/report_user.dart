import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:gap/gap.dart';

import 'report_problem.dart';

class ReportUser extends StatefulWidget {
  const ReportUser({super.key});

  @override
  State<ReportUser> createState() => _ReportUserState();
}

class _ReportUserState extends State<ReportUser> {
  bool isVisble = true;
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarN(
        title: 'Report User',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Why Are You Reporting this User ?',
                  style: Poppins.labelLarge,
                ),
                FilledButton(
                  onPressed: () => setState(
                    () => isVisble = !isVisble,
                  ),
                  style: FilledButton.styleFrom(
                      minimumSize: Size(50, 30), backgroundColor: const Color.fromARGB(200, 30, 30, 30), padding: EdgeInsets.zero, fixedSize: Size(40, 10)),
                  child: Icon(
                    isVisble ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up_rounded,
                    color: Colors.white,
                    size: 26,
                  ),
                )
              ],
            ),
            AnimatedSize(
              duration: Durations.short4,
              child: Visibility(
                visible: isVisble,
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) => InkWell(
                          highlightColor: Colors.deepOrangeAccent,
                          splashColor: const Color.fromARGB(4, 255, 255, 255),
                          onTap: () => setState(() => selected = index),
                          splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                selected == index ? Icon(Icons.radio_button_checked).textGradientr : Icon(Icons.radio_button_off_rounded),
                                Gap(10),
                                SizedBox(
                                  width: size.width * .8,
                                  child: Text(
                                    'LoreYourm ipsum dolor sit aet c o n sectur. Et cursusourm ipssourm ipsu',
                                    style: selected == index
                                        ? TextStyle(
                                            fontFamily: "poppins",
                                            debugLabel: ' titleMedium',
                                            inherit: false,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0,
                                            height: 1.50,
                                            textBaseline: TextBaseline.alphabetic,
                                            leadingDistribution: TextLeadingDistribution.even,
                                            foreground: Paint()..shader = linearGradientShader)
                                        : TextStyle(
                                            fontFamily: "poppins",
                                            debugLabel: ' titleMedium',
                                            inherit: false,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0,
                                            height: 1.50,
                                            textBaseline: TextBaseline.alphabetic,
                                            leadingDistribution: TextLeadingDistribution.even,
                                          ),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            Divider(
              color: Colors.white10,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportProblem(),
                  )),
              child: Text(
                'Report Problem',
                style: Poppins.labelLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GradientButton(text: "Submit"),
    );
  }
}
