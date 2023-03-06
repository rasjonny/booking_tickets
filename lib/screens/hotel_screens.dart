import 'package:booking_tickets/utilis/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.image, required this.imageTxt});
  final String image;
  final String imageTxt;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          color: Colors.purple, borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width * 0.6,
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFF687daf),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(12),
          Text(
            imageTxt,
            style: Styles.headlineStyle2.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(8),
          Text(
            'Open Space',
            style: Styles.headlineStyle3,
          ),
          const Gap(8),
          Text(
            '40\$/day',
            style: Styles.headlineStyle1,
          )
        ],
      ),
    );
  }
}
