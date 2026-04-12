// import 'package:flutter/cupertino.dart';
import 'package:chat_app_1/screens/contact_screen.dart';
import 'package:chat_app_1/screens/home_screen.dart';
import 'package:chat_app_1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_1/screens/setting_screen.dart';
import 'package:chat_app_1/screens/notification_screen.dart';
import 'package:chat_app_1/screens/notifier_page.dart';
import 'package:chat_app_1/screens/navigation_items_page.dart';

void main(){
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
