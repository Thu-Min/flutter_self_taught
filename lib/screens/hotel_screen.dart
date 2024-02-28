import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({
    super.key,
    required this.hotel
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      margin: const EdgeInsets.only(right: 15),
      width: size.width*0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Style.primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
              )
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Style.headLineStyleTwo.copyWith(color: Colors.white)
          ),
          const Gap(5),
          Text(
            "${hotel['location']}",
            style: Style.headLineStyleThree.copyWith(color: Colors.white)
          ),
          const Gap(8),
          Text(
            "\$ ${hotel['price']}/night",
            style: Style.headLineStyleOne.copyWith(color: Colors.white)
          ),
        ],
      ),
    );
  }
}