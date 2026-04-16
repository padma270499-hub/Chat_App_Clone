import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Settings"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/images/image7.jpg"),radius: 50,),
                    Expanded(child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "DoeJ@email.com",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                    ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 62),
            ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text("Account Info"),
            ),
          ],
        ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,5,0,0),
                      child: Text("Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ),
                    Divider(),
                    ListTile(leading: Icon(Icons.person),
                    title: Text("Account Info"),
                    trailing: Icon(Icons.arrow_forward_ios)),
                    Divider(),
                    ListTile(leading: Icon(Icons.person),
                        title: Text("Security"),
                        trailing: Icon(Icons.lock)),
                  ],
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,5,0,0),
                      child: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ),
                    Divider(),
                    ListTile(leading: Icon(Icons.notifications),
                        title: Text("Push Notification"),
                      trailing: Switch(
                        value: false,
                        onChanged: (val) {},
                      ),
                        ),
                    Divider(),
                    ListTile(leading: Icon(Icons.email),
                        title: Text("Email Notification"),
                      trailing: Switch(
                        value: true,
                        onChanged: (val) {},
                      ),),
                  ],
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,5,0,0),
                      child: Text("Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ),
                    Divider(),
                    ListTile(leading: Icon(Icons.help),
                        title: Text("Help & Support"),
                        trailing: Icon(Icons.arrow_forward_ios)),
                    Divider(),
                    ListTile(leading: Icon(Icons.info),
                        title: Text("About"),
                        trailing: Icon(Icons.lock)),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1,bottom: 6),
              // width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.logout),
                label: Text("Log Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
