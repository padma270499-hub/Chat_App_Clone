import 'package:chat_app_1/screens/App1_screens/contact_screen.dart';
import 'package:chat_app_1/screens/App1_screens/home_screen.dart';
import 'package:chat_app_1/screens/Demo_Screens/demo_page.dart';
import 'package:chat_app_1/screens/facebook_screens/facebook_ui.dart';
import 'package:chat_app_1/screens/facebook_screens/fb_login_page.dart';
import 'package:chat_app_1/screens/Demo_Screens/grid_view.dart';
import 'package:chat_app_1/screens/Demo_Screens/login_page.dart';
import 'package:chat_app_1/screens/Demo_Screens/not_prac.dart';
import 'package:chat_app_1/screens/facebook_screens/signup_page.dart';
import 'package:chat_app_1/screens/App1_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_1/screens/App1_screens/setting_screen.dart';
import 'package:chat_app_1/screens/App1_screens/notification_screen.dart';
import 'screens/facebook_screens/splash_screen.dart';
import 'package:chat_app_1/screens/App1_screens/notifier_page.dart';
import 'package:chat_app_1/screens/App1_screens/navigation_items_page.dart';

void main(){
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacebookUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
