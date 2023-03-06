import 'package:booking_tickets/screens/botom_page.dart';
import 'package:booking_tickets/utilis/app_style.dart';
import 'package:flutter/material.dart';
void main() {
runApp(
MaterialApp(
title: 'Flutter Demo',
darkTheme: ThemeData(
brightness: Brightness.dark,
primarySwatch: Colors.blueGrey,
indicatorColor: Colors.blueGrey),
theme: ThemeData(
 brightness: Brightness.dark,
primarySwatch: Colors.blue,
primaryColor: primary,
),
themeMode: ThemeMode.dark,
debugShowCheckedModeBanner: false,
home: const BottomBar(),
),
);
  }
  
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