import 'package:booking_tickets/utilis/app_layout.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Gap(40),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Text(
              'What are\n you looking for?',
              style: Styles.headlineStyle1.copyWith(
                color: Colors.white,
                fontSize: AppLayout.getHeight(35),
              ),
            ),
          ),
          FittedBox(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 4, 1, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      'AirLineTickets',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                    ),
                  ),
                  Text(
                    'Hotels',
                    style: Styles.headlineStyle3.copyWith(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Gap(20),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 51, 18, 18),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_outlined),
                Text(
                  'Arrival',
                  style: Styles.headlineStyle3,
                )
              ],
            ),
          ),
          const Gap(20),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 51, 18, 18),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_land_outlined),
                Text(
                  'Departure',
                  style: Styles.headlineStyle4,
                )
              ],
            ),
          ),
          const Gap(30),
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: SizedBox(
              height: AppLayout.getHeight(20),
              width: MediaQuery.of(context).size.width * .8,
              child: const Center(child: Text('Find Tickets')),
            ),
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'UpComing Flights',
                style: Styles.headlineStyle2,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'View All',
                  style: Styles.textStyle.copyWith(color: primary),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: AppLayout.getHeight(300),
                width: MediaQuery.of(context).size.width * .5,
                decoration: BoxDecoration(
                  color: Styles.bgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: AppLayout.getHeight(180),
                      decoration: BoxDecoration(
                        color: const Color(0xFF687daf),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/hotel3.jpeg',
                          ),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Text(
                      '20% dicount on early booking of this flight.\n don miss it.',
                      style:
                          Styles.headlineStyle1.copyWith(color: Colors.purple),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .44,
                height: AppLayout.getHeight(
                  144,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 101, 138, 201),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Discount for Survey',
                        style: Styles.headlineStyle2,
                      ),
                      const Gap(10),
                      Text(
                        'Take our survey and get Discount for our services.',
                        style: Styles.headlineStyle2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .44,
                        height: AppLayout.getHeight(
                          144,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 227, 133, 10),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '😂❤💕',
                              style: Styles.headlineStyle1,
                            ),
                            const Gap(10),
                            Text(
                              'Take our survey and get Discount for our services.',
                              style: Styles.headlineStyle2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TextField(),
    );
  }
}
