import 'package:chat_app_1/screens/notifier_page.dart';
import 'package:flutter/material.dart';

class NavigationItemsPage extends StatelessWidget {
  const NavigationItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: SelectNotifierPage,
      builder: (context, value, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Contacts"),
            NavigationDestination(
              icon: Icon(Icons.notifications),
              label: "Notification",
            ),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
          ],
selectedIndex: value, onDestinationSelected: (value){
            SelectNotifierPage.value = value;
        },
        );
      },
    );
  }
}
