import 'package:chat_app_1/screens/App1_screens/contact_screen.dart';
import 'package:chat_app_1/screens/facebook_screens/fb_login_page.dart';
import 'package:chat_app_1/screens/App1_screens/home_screen.dart';
import 'package:chat_app_1/screens/App1_screens/notification_screen.dart';
import 'package:chat_app_1/screens/App1_screens/notifier_page.dart';
import 'package:chat_app_1/screens/App1_screens/setting_screen.dart';
import 'package:chat_app_1/screens/facebook_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_1/screens/App1_screens/navigation_items_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List Screens = [
    // SplashScreen(),
    // FbLoginPage(),
    HomeScreen(),
    ContactScreen(),
    NotificationScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationItemsPage(),
body: ValueListenableBuilder(valueListenable: SelectNotifierPage, builder:
(context, value, child) {
  return Screens.elementAt(value);
},),
    );
  }
}
