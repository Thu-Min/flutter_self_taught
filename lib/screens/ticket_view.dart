import 'package:flutter/material.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:flutter_self_taught/widgets/column_layout.dart';
import 'package:flutter_self_taught/widgets/layout_builder_widget.dart';
import 'package:flutter_self_taught/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  final bool? isColor;

  const TicketView({
    super.key,
    required this.ticketList,
    required this.isColor
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: 185,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
                color: isColor == false ? Colors.white : Color(0xff526799)
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '${ticketList['from']['code']}',
                        style: isColor == false ? Style.headLineStyleThree : Style.headLineStyleThree.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      isColor == false ? ThickContainer(isColor: false) : ThickContainer(isColor: true),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: MyLayoutBuilder(isColor: isColor == false ? false : true, section: 6,)
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == false ? Color(0xff8accf7) : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      isColor == false ? ThickContainer(isColor: false) : ThickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(
                        '${ticketList['to']['code']}',
                        style: isColor == false ? Style.headLineStyleThree : Style.headLineStyleThree.copyWith(color: Colors.white),
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
                          style: isColor == false ? Style.headLineStyleFour : Style.headLineStyleFour.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '${ticketList['flying_time']}',
                        style: isColor == false ? Style.headLineStyleFour : Style.headLineStyleFour.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          '${ticketList['to']['name']}',
                          style: isColor == false ? Style.headLineStyleFour : Style.headLineStyleFour.copyWith(color: Colors.white),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor == false ? Colors.white : Style.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == false ? Colors.white : Color(0xffeeedf2),
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
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor == false ? Colors.black : Colors.white
                              ),
                            ),
                          )),
                        );
                      }
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == false ? Colors.white : Color(0xffeeedf2),
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
                color: isColor == false ? Colors.white : Style.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == false ? 0 : 20),
                  bottomRight: Radius.circular(isColor == false ? 0 : 20)
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        textOne: "${ticketList['date']}",
                        textTwo: "DATE",
                        isColor: isColor == false ? false : true
                      ),
                      ColumnLayout(
                        alignment: CrossAxisAlignment.center,
                        textOne: "${ticketList['deprature_time']}",
                        textTwo: "Departure time",
                        isColor: isColor == false ? false : true
                      ),
                      ColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        textOne: "${ticketList['number']}",
                        textTwo: "Number",
                        isColor: isColor == false ? false : true
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