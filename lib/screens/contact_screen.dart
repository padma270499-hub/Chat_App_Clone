import 'package:flutter/material.dart';
// import 'package:chat_app_1/screens/navigation_items_page.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();

}

class _ContactScreenState extends State<ContactScreen> {
  List datas = [
    {
      "name": "padma",
      "chat": "Last seen by 5pm",
      "img": "assets/images/image3.jpg",
    },
    {
      "name": "Raju",
      "chat": "Last seen by 6am",
      "img": "assets/images/image4.jpg",
    },
    {
      "name": "Vijay",
      "chat": "Last seen by 7.30pm",
      "img": "assets/images/image5.jpg",
    },
    {
      "name": "Priya",
      "chat": "Last seen by 8 am",
      "img": "assets/images/image6.jpg",
    },
    {
      "name": "Rahul",
      "chat": "Last seen by 12pm",
      "img": "assets/images/image7.jpg",
    },
    {
      "name": "Thiru",
      "chat": "Last seen by 1 am",
      "img": "assets/images/profilepic.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text("Contact List"),
        centerTitle: true,
        actions: [Icon(Icons.search), SizedBox(width: 10)],
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(datas[index]["img"]),
                radius: 25,
              ),
              title: Text(datas[index]["name"],),
              subtitle: Text(datas[index]["chat"]),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
          },
        itemCount: datas.length,
      ),
    );
  }
}
