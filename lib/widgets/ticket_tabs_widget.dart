import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String textOne;
  final String textTwo;

  const TicketTabs({
    super.key,
    required this.textOne,
    required this.textTwo
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*0.44,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
              color: Colors.white
            ),
            child: Center(
              child: Text(
                textOne
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*0.44,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.grey.shade200
            ),
            child: Center(
              child: Text(
                textTwo
              ),
            ),
          ),
        ],
      ),
    );
  }
}