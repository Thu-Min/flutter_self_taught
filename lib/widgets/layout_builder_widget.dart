import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  final bool isColor;
  final int section;

  const MyLayoutBuilder({
    super.key,
    required this.isColor,
    required this.section
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth()/section).floor(),
            (index) => SizedBox(
              width: 3,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == false ? Color(0xff8accf7) : Colors.white
                ),
              ),
            )
          ),
        );
      },
    );
  }
}