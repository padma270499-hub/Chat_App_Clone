import 'package:chat_app_1/screens/home_screen.dart';
import 'package:chat_app_1/screens/signup_page.dart';
import 'package:chat_app_1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FbLoginPage extends StatefulWidget {
  const FbLoginPage({super.key});

  @override
  State<FbLoginPage> createState() => _FbLoginPageState();
}

class _FbLoginPageState extends State<FbLoginPage> {
  bool ishidden = true;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login Page",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white),

        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Center(child: Image.asset("assets/images/login img.jpg")),
                SizedBox(height: 20),
                Text("Welcome back! Sign into your account"),
                SizedBox(height: 20),
                TextFormField(
                   keyboardType: TextInputType.emailAddress,
                  // autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your Email";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    label: Text("Email"),
                    hintText: "Enter Your Email",
                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  // keyboardType: TextInputType.number,
                  // autovalidateMode: AutovalidateMode.always,
                  obscureText: ishidden,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Password";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishidden = !ishidden;
                        });
                      },
                      icon: Icon(
                        ishidden ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    label: Text("Password"),
                    hintText: "Enter Your Valid Password",
                  ),
                ),
                SizedBox(height: 20),
                // Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WelcomeScreen();
                            },
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                // Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
                SizedBox(height: 5),
                // Spacer(),
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text("Or", style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 2),
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignupPage();
                        },),);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook, color: Colors.blue, size: 20),
                          SizedBox(width: 10),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google logo.jpg",
                            height: 22,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Login with Google",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
