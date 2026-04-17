import 'package:chat_app_1/screens/facebook_ui.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.purple),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your email";
                  }
                },
                cursorColor: Colors.red,

                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  hintText: "Enter email",
                  hintStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Password";
                  }
                },
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  hintText: "Enter valid Password",
                  hintStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // if(formKey.currentState!.validate()){
                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FacebookUi();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
