import 'package:flutter/material.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:gap/gap.dart';

class ReportProblem extends StatelessWidget {
  const ReportProblem({super.key});

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
            Gap(20),
            Text('Your Name', style: Poppins.titleSmall),
            Gap(6),
            TextField(),
            Gap(14),
            Text('Your Email', style: Poppins.titleSmall),
            Gap(6),
            TextField(),
            Gap(14),
            Text('Issue', style: Poppins.titleSmall),
            Gap(6),
            TextField(
              maxLines: 6,
            ),
            Gap(14),
            Text('Upload Image Or Screenshot ( Optional )', style: Poppins.titleSmall),
            Gap(6),
            Container(
              width: size.width,
              height: size.height * .15,
              decoration: BoxDecoration(color: Color.fromRGBO(40, 40, 40, 0.8), borderRadius: BorderRadius.circular(18)),
              child: Icon(
                Icons.cloud_upload_rounded,
                size: 36,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GradientButton(text: "Submit"),
    );
  }
}
