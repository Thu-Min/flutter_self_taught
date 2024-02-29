import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:flutter_self_taught/widgets/double_text_widget.dart';
import 'package:flutter_self_taught/widgets/icon_text_widget.dart';
import 'package:flutter_self_taught/widgets/ticket_tabs_widget.dart';
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
          const TicketTabs(textOne: 'Airline Tickets', textTwo: 'Hotels',),
          const Gap(25),
          const IconTextWidget(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(15),
          const IconTextWidget(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xd91130ce)
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Style.textStyle.copyWith(color: Colors.white),
              ),
            )
          ),
          const Gap(40),
          const DoubleTextWidget(text: "Upcoming Flights"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width*0.42,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/hotel.png')
                        )
                      ),
                    ),
                    const Gap(12),
                    Text(
                      "20% discount on the early booking of this flight, Don't miss!",
                      style: Style.headLineStyleTwo,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: size.width*0.44,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Disount\nfor survey',
                              style: Style.headLineStyleTwo.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const Gap(10),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Style.headLineStyleTwo.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xff189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width*0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffec6545)
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love', 
                          style: Style.headLineStyleTwo.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 50)
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38)
                              ),
                            ]
                          )
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}