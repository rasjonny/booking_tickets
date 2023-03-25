import 'package:booking_tickets/utilis/app_layout.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:booking_tickets/widget/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  const TicketView({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        height: AppLayout.getHeight(177),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              //showing blue part of the card
              Container(
                decoration: BoxDecoration(
                  color:
                      isColor != null ? Colors.white : const Color(0xFF526799),
                  borderRadius: const BorderRadius.only(
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
                          style: Styles.headlineStyle2.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        ),
                        const Spacer(),
                        isColor == null
                            ? const ThickContainer()
                            : const ThickContainer(
                                isColor: false,
                              ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                          (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: isColor != null
                                                    ? Colors.black
                                                    : Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.airplanemode_active,
                                      color: isColor != null
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        isColor == null
                            ? const ThickContainer()
                            : const ThickContainer(
                                isColor: false,
                              ),
                        const Spacer(),
                        Text(
                          'LDN',
                          style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
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
                            style: Styles.headlineStyle4.copyWith(
                              color:
                                  isColor != null ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          '8H:30M',
                          style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        ),
                        Text(
                          'London',
                          style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //showing orange part of the card ],
              Container(
                color: isColor == null ? Colors.orange : Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: isColor != null ? Colors.black : Colors.white,
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
                                    color: isColor != null
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          color: isColor != null ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              //showing bottom part of the orange part of the card ]),
              ,
              Container(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.orange : Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1',
                          style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        ),
                        Text(
                          '8:00 AM',
                          style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        ),
                        Text(
                          '23',
                          style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Date',
                            style: Styles.headlineStyle4.copyWith(
                              color:
                                  isColor != null ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'DepartureTime',
                          style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor != null ? Colors.black : Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Number',
                            style: Styles.headlineStyle3.copyWith(
                              color:
                                  isColor != null ? Colors.black : Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
