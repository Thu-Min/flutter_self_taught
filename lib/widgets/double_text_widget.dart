import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String text;

  const DoubleTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Style.headLineStyleTwo,
        ),
        InkWell(
          onTap: () {
            print('Tapped');
          },
          child: Text(
            'View all',
            style: Style.textStyle.copyWith(
              color: Style.primaryColor
            ),
          ),
        ),
      ],
    );
  }
}