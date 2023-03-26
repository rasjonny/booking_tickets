import 'package:booking_tickets/screens/botom_page.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
     
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primary,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomBar(),
    ),
  );
}
// find factorial of a number in flutter?
//how to connect to firebase storage in flutter?

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: const Text('honmePage'),
    );
  }
}
