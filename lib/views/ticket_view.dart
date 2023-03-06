import 'package:booking_tickets/utilis/app_style.dart';
import 'package:booking_tickets/widget/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          height: 200,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(left: 16),
            child: Column(children: [
              //showing blue part of the card
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NYC',
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const ThickContainer(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                    builder: (context, constraint) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraint.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white)),
                                            )),
                                  );
                                }),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: const Icon(Icons.airplanemode_active),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ThickContainer(),
                        const Spacer(),
                        Text(
                          'LDN',
                          style: Styles.headlineStyle3.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            'New York',
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Text(
                          "8H:30M",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'London',
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //showing orange part of the card ],
              Container(
                color: Colors.orange,
                child: Row(children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    height: 1,
                                    width: 5,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      color: Colors.white,
                                    )),
                                  )),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
              )
              //showing bottom part of the orange part of the card ]),
              ,
              Container(
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1',
                          style: Styles.headlineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '8:00 AM',
                          style: Styles.headlineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '23',
                          style: Styles.headlineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date',
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'DepartureTime',
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Number',
                          style: Styles.headlineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
