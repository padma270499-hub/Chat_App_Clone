import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFE76F51),
                Color(0xFFF4A261),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
      child: Center(
        child: Text("Hello!",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),),
      ),
    ),
    );
  }
}
