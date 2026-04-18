import 'package:chat_app_1/screens/contact_screen.dart';
import 'package:chat_app_1/screens/fb_login_page.dart';
import 'package:chat_app_1/screens/home_screen.dart';
import 'package:chat_app_1/screens/notification_screen.dart';
import 'package:chat_app_1/screens/notifier_page.dart';
import 'package:chat_app_1/screens/setting_screen.dart';
import 'package:chat_app_1/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_1/screens/navigation_items_page.dart';

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
