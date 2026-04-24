import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.red,
            // indicatorSize: TabBarIndicatorSize.label,
            // indicatorAnimation: TabIndicatorAnimation.linear,
            tabs: [
              Tab(text: "New"),
              Tab(text: "page 0", icon: Icon(Icons.home)),
              Tab(text: "Page 1", icon: Icon(Icons.settings)),
              Tab(text: "Page 2", icon: Icon(Icons.person)),
            ],
          ),
          title: Text("Title", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: [
            Card(child: Text("Sample reel card"),elevation: 5, color: Colors.pink,),
            // Center(child: Text("Content 1")),
            Center(child: Text("Content 2")),
            Center(child: Text("Content 3")),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Spam",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            content: Text(
                              "Warning this is spam alert",
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                              ),
                            ),
                            actions: [
                              IconButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Submitted successfully"),
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.check, color: Colors.blue),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close, color: Colors.red),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(height: 200,child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active)),
                              Spacer(),
                            ],
                          ),);
                        },
                      );
                    },
                    child: Text("Success"),
                  ),
                  Spacer(),
                  Center(
                    child: ElevatedButton(onPressed: () {}, child: Text("Success")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
