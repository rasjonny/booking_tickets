import 'package:booking_tickets/screens/hotel_screens.dart';
import 'package:booking_tickets/views/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFeeedf2),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GoodMorining',
                          style: Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'BookTickets',
                          style: Styles.headlineStyle1,
                        ),
                        const Gap(25),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/airplane.jpeg'),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6F0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                      const Gap(4),
                      Text(
                        'Search',
                        style: Styles.headlineStyle4,
                      ),
                      const Gap(10),
                      const TextField(
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxWidth: 200,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(40),
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
                )
              ],
            ),
          ),
          const Gap(40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TicketView(),
                Gap(15),
                TicketView(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hotels',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HotelScreen(
                  imageTxt: 'SkyLight',
                  image: 'assets/images/hotelone.jpeg',
                ),
                Gap(10),
                HotelScreen(
                  image: 'assets/images/hotel2.jpeg',
                  imageTxt: 'Sheraton',
                ),
                Gap(10),
                HotelScreen(
                  image: 'assets/images/hotel3.jpeg',
                  imageTxt: 'Star',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
