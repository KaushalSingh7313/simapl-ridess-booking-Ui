import 'package:flutter/material.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:fyc_ride/util/widgets/drawer.dart';
import 'package:gap/gap.dart';

class SupportHelp extends StatelessWidget {
  const SupportHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.black,
      appBar: AppbarD(title: "Support & Help"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            const Text('Your Name', style: Poppins.titleSmall),
            const Gap(6),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
                filled: true,
                fillColor: Colors.white12,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white), // Styling the text color
            ),
            const Gap(14),
            const Text('Your Email', style: Poppins.titleSmall),
            const Gap(6),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                filled: true,
                fillColor: Colors.white12,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const Gap(14),
            const Text('Message', style: Poppins.titleSmall),
            const Gap(6),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Type your message',
                filled: true,
                fillColor: Colors.white12,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const Gap(14),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GradientButton(text: "Submit"),
    );
  }
}
