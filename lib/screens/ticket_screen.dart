import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_self_taught/screens/ticket_view.dart';
import 'package:flutter_self_taught/utils/app_info.dart';
import 'package:flutter_self_taught/utils/app_layout.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';
import 'package:flutter_self_taught/widgets/column_layout.dart';
import 'package:flutter_self_taught/widgets/layout_builder_widget.dart';
import 'package:flutter_self_taught/widgets/ticket_tabs_widget.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Style.headLineStyleOne.copyWith(fontSize: 35),
              ),
              const Gap(20),
              const TicketTabs(textOne: 'Upcoming', textTwo: 'Previous',),
              const Gap(20),   
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticketList: ticketList[0], isColor: false,),
              ),
              const SizedBox(height: 1),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          textOne: 'Flutter DB',
                          textTwo: 'Passenger',
                          isColor: false,
                        ),
                        ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          textOne: '5221 364896',
                          textTwo: 'passport',
                          isColor: false,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const MyLayoutBuilder(isColor: false, section: 15),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          textOne: 'TM 453127',
                          textTwo: 'Number of E-ticket',
                          isColor: false,
                        ),
                        ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          textOne: 'B2SG28',
                          textTwo: 'Booking Code',
                          isColor: false,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const MyLayoutBuilder(isColor: false, section: 15),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(
                                  " **** 2451",
                                  style: Style.headLineStyleThree
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment Method',
                              style: Style.headLineStyleFour,
                            ),
                          ],
                        ),

                        const ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          textOne: '\$249.99',
                          textTwo: 'Price',
                          isColor: false,
                        ),
                      ],
                    ),
                    const Gap(20),
                  ]
                ),
              ),   
              const SizedBox(height: 1),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/Thu-Min',
                      drawText: false,
                      color: Style.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              )     
            ],
          ),
        ], 
      ),
    );
  }
}