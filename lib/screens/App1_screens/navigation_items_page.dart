import 'package:chat_app_1/screens/App1_screens/notifier_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class NavigationItemsPage extends StatefulWidget {
  const NavigationItemsPage({super.key});

  @override
  State<NavigationItemsPage> createState() => _NavigationItemsPageState();
}

class _NavigationItemsPageState extends State<NavigationItemsPage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: SelectNotifierPage,
      builder: (context, value, child) {
        return WaterDropNavBar(
          barItems: [
            BarItem(filledIcon: Icons.home, outlinedIcon: CupertinoIcons.home),
            BarItem(filledIcon: Icons.person, outlinedIcon: CupertinoIcons.person),
            BarItem(filledIcon: Icons.notifications, outlinedIcon: Icons.notifications),
            BarItem(filledIcon: Icons.settings, outlinedIcon: Icons.settings)
          ],
          waterDropColor: Colors.pink,
          selectedIndex: value,
          onItemSelected: (index) {
            setState(() {
              SelectNotifierPage.value = index;
            });
          },
        );
      },
    );
  }
}
