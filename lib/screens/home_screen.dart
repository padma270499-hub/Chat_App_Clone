import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Center(child: Text("DashBoard", style: TextStyle())),

        //centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 25, 8),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/profilepic.jpg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.all(16),
                child: ListTile(
                  title: Text(
                    "Hello,PadmaPriya",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "Welcome back!",
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                child: Container(
                  height: 175,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFFB3E5FC),
                  ),

                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Build your First App",
                          style: TextStyle(fontSize: 20),
                        ),
                        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
                        subtitle: Text(
                          "Get started with our quick guide",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 12),

                      Row(
                        children: [
                          SizedBox(width: 10),
                          Align(
                            alignment: AlignmentGeometry.bottomStart,

                            child: ElevatedButton(
                              onPressed: () {
                                print("Tapped");
                              },
                              child: Text("Get Started"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox.fromSize(size: Size.fromHeight(15)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFFA5D6A7),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.folder),
                          SizedBox(width: 8),
                          Text("Project"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Expanded(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFFFFCC80),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle),
                          SizedBox(width: 8),
                          Text("Create"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox.fromSize(size: Size.fromHeight(5)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFFEF9A9A),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications_active),
                          SizedBox(width: 8),
                          Text("Notification"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  Flexible(
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFF9FA8DA),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.store_outlined),
                          SizedBox(width: 8),
                          Text("Store"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5),
                  ),
                  Text("View all", style: TextStyle(fontWeight: FontWeight(5))),
                ],
              ),

              Card(
                child: ListTile(
                  iconColor: Colors.green.shade900,
                  leading: Icon(Icons.account_balance_wallet, size: 30),
                  title: Text(
                    "Expanse Tracker",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Updated 2 days ago"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              Card(
                child: ListTile(
                  iconColor: Colors.blue.shade900,
                  leading: Icon(Icons.inventory_sharp, size: 30),
                  title: Text(
                    "Inventory App",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Updated 2 days ago"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
