import 'package:flutter/material.dart';

class FacebookUi extends StatefulWidget {
  const FacebookUi({super.key});

  @override
  State<FacebookUi> createState() => _FacebookUiState();
}

class _FacebookUiState extends State<FacebookUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.message_outlined, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: Colors.blue),
                Icon(Icons.ondemand_video, color: Colors.black),
                Icon(Icons.people, color: Colors.black),
                Icon(Icons.storefront_outlined, color: Colors.black),
                Icon(Icons.notifications, color: Colors.black),
                Icon(Icons.account_circle, color: Colors.black),
              ],
            ),
          ),

          Divider(thickness: 1,height: 1,color: Colors.grey),

          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image4.jpg"),
              ),
              title: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text("What's on your mind?"),
              ),
              trailing: Icon(Icons.photo_album_outlined,size: 30,),
            ),
          ),

          SizedBox(height: 10),

          Container(
            // height: 180,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyCard("Create story",
                    "https://i.pravatar.cc/150?img=1"),
                storyCard("User 1",
                    "https://i.pravatar.cc/150?img=2"),
                storyCard("User 2",
                    "https://i.pravatar.cc/150?img=4"),
              ],
            ),
          ),
        ],
      ),
    );
  }
  static Widget storyCard(String name, String image) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(8),
      child: Text(
        name,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
