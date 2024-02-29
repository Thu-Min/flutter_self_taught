import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_self_taught/screens/hotel_screen.dart';
import 'package:flutter_self_taught/screens/ticket_view.dart';
import 'package:flutter_self_taught/utils/app_info.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:flutter_self_taught/widgets/double_text_widget.dart';
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
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: const EdgeInsets.only(top: 20),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DoubleTextWidget(text: "Upcoming Flights"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticketList: singleTicket, isColor: true,)).toList(),
            ),
          ),
          const Gap(15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DoubleTextWidget(text: "Hotels"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
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