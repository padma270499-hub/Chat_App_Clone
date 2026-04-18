import 'package:chat_app_1/screens/home_screen.dart';
import 'package:chat_app_1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Icon(Icons.arrow_back),
        title: Text("Store"),
        centerTitle: true,
        actions: [Icon(Icons.search)],
        actionsPadding: EdgeInsets.all(8),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(6, 3, 6, 3),
        padding: EdgeInsets.all(8),
        color: Colors.white54,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.search_rounded),
                  SizedBox(width: 8),
                  Text("Search"),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Card(
                    color: Colors.white,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Mention",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/images/UI kit.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UI Kit",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Essential UI components",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        SizedBox(height: 10),
                        Icon(Icons.arrow_forward_ios, size: 20),
                        SizedBox(height: 18),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text("Install"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/images/icons.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Icons",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Custom icon packs",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        SizedBox(height: 10),
                        Icon(Icons.arrow_forward_ios, size: 20),
                        SizedBox(height: 18),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text("Install"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),

            Text("Popular Items", style: TextStyle(fontSize: 20)),

            Card(
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.bar_chart, color: Colors.blue),
                ),
                title: Text(
                  "Expense Tracker",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star_border, size: 16, color: Colors.grey[300]),

                    SizedBox(width: 6),

                    Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),

                    SizedBox(width: 6),

                    Text(
                      "1,254 ratings",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            Card(
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.inventory, color: Colors.green),
                ),
                title: const Text(
                  "Inventory App",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                subtitle: Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    Icon(Icons.star_border, size: 16, color: Colors.grey[300]),

                    SizedBox(width: 6),

                    Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),

                    SizedBox(width: 6),

                    Text(
                      "1,254 ratings",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
