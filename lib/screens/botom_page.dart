import 'package:booking_tickets/screens/home_screens.dart';
import 'package:booking_tickets/screens/profile_screen.dart';
import 'package:booking_tickets/screens/search_screen.dart';
import 'package:booking_tickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int isSelected = 3;
  void onTapped(int index) {
    setState(() {
      isSelected = index;
    });
  }

  final List<Widget> widgetList = const <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[isSelected],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        onTap: onTapped,
        currentIndex: isSelected,
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
              color: Color.fromARGB(255, 51, 39, 35),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
