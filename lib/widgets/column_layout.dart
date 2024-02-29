import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:gap/gap.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String textOne;
  final String textTwo;
  final bool isColor;

  const ColumnLayout({
    super.key,
    required this.alignment,
    required this.textOne,
    required this.textTwo,
    required this.isColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          textOne,
          style: isColor == false ? Style.headLineStyleThree : Style.headLineStyleThree.copyWith(color: Colors.white),
        ),
        const Gap(5),
        Text(
          textTwo,
          style: isColor == false ? Style.headLineStyleFour : Style.headLineStyleFour.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}