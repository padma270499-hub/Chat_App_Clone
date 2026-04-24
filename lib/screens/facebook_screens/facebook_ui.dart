import 'package:chat_app_1/screens/Demo_Screens/demo_page.dart';
import 'package:chat_app_1/screens/facebook_screens/fb_login_page.dart';
import 'package:chat_app_1/screens/facebook_screens/splash_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class FacebookUi extends StatefulWidget {
  const FacebookUi({super.key});

  @override
  State<FacebookUi> createState() => _FacebookUiState();
}

class _FacebookUiState extends State<FacebookUi> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          leading: Builder(
            builder: (context) =>
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
          ),
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
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DemoPage();
                    },
                  ),
                );
              },
              icon: Icon(Icons.alt_route),
            ),
            Icon(Icons.add_box_outlined, color: Colors.black),
            SizedBox(width: 15),
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 15),
            Icon(Icons.message_outlined, color: Colors.black),
            SizedBox(width: 10),
          ],

          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.ondemand_video, color: Colors.black)),
              Tab(icon: Icon(Icons.people, color: Colors.black)),
              Tab(icon: Icon(Icons.storefront_outlined, color: Colors.black)),
              Tab(icon: Icon(Icons.notifications, color: Colors.black)),
              Tab(icon: Icon(Icons.account_circle, color: Colors.black)),
            ],
          ),
        ),
        drawer: SidebarX(
          controller: _controller,
          showToggleButton: false,

          // extendedTheme: SidebarXTheme(width: 200),
          // items: [
          //
          //   SidebarXItem(icon: Icons.home,label: "Home"),
          //   SidebarXItem(icon: Icons.notifications_active,label: "Notification all"),
          //   SidebarXItem(icon: Icons.home, label:  "abcdefghi"),
          // ],
          theme: SidebarXTheme(
            width: 280,
            decoration: BoxDecoration(color: Colors.white),

            textStyle: TextStyle(fontSize: 16, color: Colors.black87),

            selectedTextStyle: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),

            itemTextPadding: const EdgeInsets.only(left: 15),
            itemPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 10,
            ),

            iconTheme: const IconThemeData(color: Colors.black54, size: 24),

            selectedIconTheme: const IconThemeData(color: Colors.blue),
          ),

          // headerDivider: Divider(color: Colors.black,),
          headerBuilder: (context, extended) {
            return Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 5),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/image7.jpg"),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "Padma Priya",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      const Icon(Icons.notifications_none, size: 30),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "9+",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },

          items: const [
            SidebarXItem(icon: Icons.bookmark_border, label: 'Saved'),
            SidebarXItem(icon: Icons.history, label: 'Memories'),
            SidebarXItem(icon: Icons.storefront, label: 'Marketplace'),
            SidebarXItem(icon: Icons.groups, label: 'Groups'),
            SidebarXItem(icon: Icons.videogame_asset, label: 'Games'),
          ],

          footerBuilder: (context, extended) {
            return Column(
              children: [
                const Divider(),

                ListTile(
                  leading: const Icon(Icons.help_outline),
                  title: const Text("Help & Support"),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  onTap: () {},
                ),

                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings & Privacy"),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  onTap: () {},
                ),

                ListTile(
                  leading: const Icon(Icons.work_outline),
                  title: const Text("Professional Access"),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  onTap: () {},
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FbLoginPage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Log out",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            );
          },
        ),

        // drawer: Drawer(
        //   child: Padding(
        //     padding: EdgeInsets.all(5),
        //     child: ListView(
        //       children: [
        //         UserAccountsDrawerHeader(
        //           onDetailsPressed: () {},
        //           currentAccountPicture: CircleAvatar(
        //             // foregroundImage: AssetImage("assets/images/image5.jpg"),
        //             backgroundImage: AssetImage("assets/images/image5.jpg"),
        //           ),
        //           arrowColor: Colors.white,
        //           accountName: Text("PadmaPriya"),
        //           accountEmail: Text("riya123@gmail.com"),
        //           decoration: BoxDecoration(color: Colors.deepOrangeAccent),
        //         ),
        //         Text("Option1"),
        //         Divider(),
        //         Text("Option2"),
        //         Divider(),
        //         Text("Option3"),
        //         ElevatedButton(
        //           onPressed: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) {
        //                   return SplashScreen();
        //                 },
        //               ),
        //             );
        //           },
        //           child: Text("Logout"),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        body: TabBarView(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                // Container(
                //   height: 60,
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   color: Colors.white,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: const [
                //       Icon(Icons.home, color: Colors.blue),
                //       Icon(Icons.ondemand_video, color: Colors.black),
                //       Icon(Icons.people, color: Colors.black),
                //       Icon(Icons.storefront_outlined, color: Colors.black),
                //       Icon(Icons.notifications, color: Colors.black),
                //       Icon(Icons.account_circle, color: Colors.black),
                //     ],
                //   ),
                // ),
                //
                // Divider(thickness: 1, height: 1, color: Colors.grey),
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
                    trailing: Icon(Icons.photo_album_outlined, size: 30),
                  ),
                ),

                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    // physics: ClampingScrollPhysics(),
                    children: [
                      storyCard(
                        "Create story",
                        "https://picsum.photos/300/200?grayscale",
                      ),
                      storyCard("User 1", "https://picsum.photos/300/200"),
                      storyCard(
                        "User 2",
                        "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // CarouselSlider(
            //              items: [1, 2, 3, 4, 5].map((i) {
            //                return Builder(
            //                  builder: (context) {
            //                    return Container(
            //                      width: MediaQuery.of(context).size.width,
            //                      margin: EdgeInsets.symmetric(horizontal: 5),
            //                      decoration: BoxDecoration(color: Colors.amber),
            //                      child: Text("Box $i", style: TextStyle(fontSize: 16)),
            //                    );
            //                  },
            //                );
            //              }).toList(),
            //              options: CarouselOptions(height: 300),
            //            ),

            CarouselSlider(
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber
                          ),
                          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )
            ),

            Center(child: Text("Content 3")),
            Center(child: Text("Content 4")),
            Center(child: Text("Content 5")),
            Center(child: Text("Content 6")),
          ],
        ),
      ),
    );
  }

  static Widget storyCard(String name, String image) {
    return Container(
      width: 130,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
          // opacity: 0.9,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(8),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
