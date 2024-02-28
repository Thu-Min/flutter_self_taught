import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:flutter_self_taught/widgets/icon_text_widget.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What are \n you looking for?",
            style: Style.headLineStyleOne.copyWith(fontSize: 35),
          ),
          const Gap(20),
          Container(
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
                  child: const Center(
                    child: Text(
                      'Airline Tickets'
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
                  child: const Center(
                    child: Text(
                      'Hotels'
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(25),
          const IconTextWidget(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(15),
          const IconTextWidget(icon: Icons.flight_land_rounded, text: 'Arrival'),
        ],
      ),
    );
  }
}