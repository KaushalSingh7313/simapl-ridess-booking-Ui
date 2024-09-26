import 'package:flutter/material.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:gap/gap.dart';

class TestFeild extends StatelessWidget {
  final String title;
  final int maxLines;
  final String initialText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry padding;
  const TestFeild(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.initialText = "",
      this.onChanged,
      this.keyboardType = TextInputType.text,
      this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 20)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Poppins.titleSmall),
          Gap(4),
          TextField(
            maxLines: maxLines,
            // controller: TextEditingController(text: initialText),
            onChanged: onChanged,
            //      textAlignVertical: TextAlignVertical.top,
            keyboardType: keyboardType,
          ),
        ],
      ),
    );
  }
}
