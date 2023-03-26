import 'package:booking_tickets/screens/ticket_screen.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFFeeedf2),

      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/airplane.jpeg'),
                  ),
                ),
              ),
              const Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style:
                        Styles.headlineStyle1.copyWith(color: Colors.white54),
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Addis Ababa',
                        style: Styles.headlineStyle4
                            .copyWith(color: Colors.blueGrey),
                      ),
                      const Gap(70),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Edit',
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                        ),
                      ),
                      Text(
                        'Premium Status',
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          const Gap(40),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
              Positioned(
                right: -40,
                top: -36,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 30, color: Colors.black54),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'You have got a new award.',
                          style: Styles.headlineStyle3
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have 5 flights',
                          style: Styles.headlineStyle4.copyWith(
                            color: const Color.fromARGB(255, 4, 17, 23),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(40),
          Text(
            'Accmulated miles are',
            style: Styles.headlineStyle2
                .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Gap(40),
          Column(
            children: [
              Text(
                '34869',
                style: Styles.headlineStyle1
                    .copyWith(fontSize: 45, fontWeight: FontWeight.w600),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles acquired',
                    style: Styles.headlineStyle3,
                  ),
                  Text(
                    '23 May 2022',
                    style: Styles.headlineStyle3,
                  ),
                ],
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '23042',
                    secondText: 'miles',
                    alignment: CrossAxisAlignment.start,
                  ),
                  AppColumnLayout(
                    firstText: 'AirLines co',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '24',
                    secondText: 'miles',
                    alignment: CrossAxisAlignment.start,
                  ),
                  AppColumnLayout(
                    firstText: 'Macdonal',
                    secondText: 'received from',
                    alignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
              const Gap(40),
              InkWell(
                onTap: () {},
                child: Text(
                  'How to get more miles?',
                  style: Styles.headlineStyle3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
