import 'package:booking_tickets/views/ticket_view.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Tickets',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const TicketView(
            isColor: true,
          ),
        ],
      ),
    );
  }
}
