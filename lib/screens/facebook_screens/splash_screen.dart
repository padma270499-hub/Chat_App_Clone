import 'package:chat_app_1/screens/facebook_screens/facebook_ui.dart';
import 'package:chat_app_1/screens/facebook_screens/fb_login_page.dart';
import 'package:chat_app_1/screens/App1_screens/welcome_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.transparent,
    //   body: GestureDetector(
    //     onDoubleTap: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) {
    //             return FbLoginPage();
    //           },
    //         ),
    //       );
    //     },
    //     child: Container(
    //       width: double.infinity,
    //       height: double.infinity,
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [Color(0xFFE76F51), Color(0xFFF4A261)],
    //           begin: Alignment.centerLeft,
    //           end: Alignment.centerRight,
    //         ),
    //       ),
    //       child: Center(
    //         child: Text(
    //           "Hello!",
    //           style: TextStyle(
    //             fontSize: 40,
    //             fontWeight: FontWeight.bold,
    //             color: Colors.white70,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    // return EasySplashScreen(
    //   durationInSeconds: 5,
    //   backgroundColor: Colors.transparent,
    //   logo: Image.asset(
    //     "assets/images/image7.jpg",
    //     width: 120,
    //     height: 120,
    //     fit: BoxFit.cover,
    //   ),
    //   title: Text(
    //     "ChatApp",
    //     style: TextStyle(
    //       fontSize: 28,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.white,
    //       letterSpacing: 1.2,
    //     ),
    //   ),
    //   loadingText: Text(
    //     "Connecting to People....",
    //     style: TextStyle(fontSize: 16, color: Colors.white70),
    //   ),
    //   navigator: FbLoginPage(),
    // );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: EasySplashScreen(
          durationInSeconds: 4,
          logo: Image.asset(
            "assets/images/mariia-shalabaieva-d64-ghA_rH4-unsplash.jpg",
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          title: const Text("ChatApp"),
          navigator: const FbLoginPage(),
          showLoader: false,
          loadingText: Text("Please Login......"),
          loadingTextPadding: EdgeInsets.fromLTRB(50,0,50,100),
        ),
      ),
    );
  }
}
