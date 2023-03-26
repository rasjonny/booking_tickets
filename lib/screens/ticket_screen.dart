import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_tickets/utilis/app_layout.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:booking_tickets/views/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tickets',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.blueAccent),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'UpComing',
                      ),
                      Text('Previous')
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 70),
                child: TicketView(
                  isColor: true,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(96)),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'FlutterDash',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '3748979',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(96)),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '37040-9070',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: 'Bw3dlj',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(96)),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/visa.jpeg'),
                                    ),
                                  ),
                                ),
                                Text(
                                  '***357',
                                  style: Styles.headlineStyle3
                                      .copyWith(color: Colors.black38),
                                )
                              ],
                            ),
                            Text(
                              'payment method',
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$344',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // how to display barcode widget
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                padding: const EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    width: double.infinity,
                    height: 70,
                    drawText: false,
                    color: Styles.textColor,
                  ),
                ),
              ),
              const Gap(30),
              const Padding(
                padding: EdgeInsets.only(right: 48.0, left: 74),
                child: TicketView(),
              )
            ],
          ),
          Positioned(
            left: 19,
            top: 300,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
              ),
              child: const CircleAvatar(
                maxRadius: 30,
              ),
            ),
          ),
          Positioned(
            right: 19,
            top: 300,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
              ),
              child: const CircleAvatar(
                maxRadius: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final CrossAxisAlignment alignment;
  final String secondText;
  const AppColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headlineStyle3,
        ),
        Gap(AppLayout.getHeight(15)),
        Text(
          secondText,
          style: Styles.headlineStyle4.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
