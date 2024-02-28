import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:flutter_self_taught/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  const TicketView({
    super.key,
    required this.ticketList
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
                color: Color(0xff526799)
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${ticketList['from']['code']}',
                        style: Style.headLineStyleThree.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) { 
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                    (constraints.constrainWidth()/6).floor(),
                                    (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                      ),
                                    )
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        '${ticketList['to']['code']}',
                        style: Style.headLineStyleThree.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${ticketList['from']['name']}',
                          style: Style.headLineStyleFour.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '${ticketList['flying_time']}',
                        style: Style.headLineStyleFour.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${ticketList['to']['name']}',
                          style: Style.headLineStyleFour.copyWith(color: Colors.white),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Style.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xffeeedf2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white
                              ),
                            ),
                          )),
                        );
                      }
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xffeeedf2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                ],
              )
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Style.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticketList['date']}",
                            style: Style.headLineStyleThree.copyWith(color: Colors.white),
                          ),
                          Text(
                            "DATE",
                            style: Style.headLineStyleFour.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${ticketList['deprature_time']}",
                            style: Style.headLineStyleThree.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Departure time",
                            style: Style.headLineStyleFour.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticketList['number']}",
                            style: Style.headLineStyleThree.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Number",
                            style: Style.headLineStyleFour.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}