import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:gap/gap.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xffbfc2df),
          ),
          const Gap(10),
          Text(
            text,
            style: Style.textStyle,
          )
        ],
      ),
    );
  }
}