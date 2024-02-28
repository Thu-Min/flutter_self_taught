import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_self_taught/screens/hotel_screen.dart';
import 'package:flutter_self_taught/screens/ticket_view.dart';
import 'package:flutter_self_taught/utils/app_info.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: Style.headLineStyleThree,
                          ),
                          Text(
                            'Book Tickets',
                            style: Style.headLineStyleOne
                          )
                        ]
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/airplane.jpg")
                          )
                        ),
                      )
                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFF4F6FD)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "Search",
                          style: Style.headLineStyleFour,
                        )
                      ],
                    ),
                  ),
                ),          
              ]
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Flights',
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
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticketList: singleTicket)).toList(),
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotel",
                  style: Style.headLineStyleTwo,
                ),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Text(
                    "View All",
                    style: Style.headLineStyleFour.copyWith(color: Style.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}