import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Messages/messagescreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> arrContent = [
    {
      "img": "https://randomuser.me/api/portraits/men/1.jpg",
      "name": "Your Story"
    },
    {
      "img": "https://randomuser.me/api/portraits/women/1.jpg",
      "name": "Rohini"
    },
    {
      "img": "https://randomuser.me/api/portraits/men/2.jpg",
      "name": "lalit"
    },
    {
      "img": "https://randomuser.me/api/portraits/men/3.jpg",
      "name": "bhavesh"
    },
    {
      "img": "https://randomuser.me/api/portraits/men/1.jpg",
      "name": "utkarsh"
    },
    {
      "img": "https://randomuser.me/api/portraits/women/1.jpg",
      "name": "yashika"
    },
    {
      "img": "https://randomuser.me/api/portraits/men/2.jpg",
      "name": "aryaman"
    },
    {
      "img": "https://randomuser.me/api/portraits/men/3.jpg",
      "name": "piyush_00"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: UiHelper.CustomImage(imgurl: "Camera Icon.png"),
        ),
        title: UiHelper.CustomImage(imgurl: "Instagram Logo (1).png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: "IGTV.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen()),
              );
            },
            icon: UiHelper.CustomImage(imgurl: "Messanger.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Story Avatars
            SizedBox(
              height: 100,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: arrContent.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          NetworkImage(arrContent[index]["img"]!),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        arrContent[index]["name"]!,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // Post Header
            ListTile(
              leading: UiHelper.CustomImage(imgurl: "person1.png"),
              title: Text(
                "joshua_I",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              subtitle: Text(
                "Tokyo, Japan",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              trailing: UiHelper.CustomImage(imgurl: "More Icon.png"),
            ),

            // Post Image (✅ FIXED)
            Container(
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                "assets/images/Rectangle (1).png",
                fit: BoxFit.cover,
              ),
            ),

            // Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  UiHelper.CustomImage(imgurl: "Like.png"),
                  SizedBox(width: 20),
                  UiHelper.CustomImage(imgurl: "Comment.png"),
                  SizedBox(width: 20),
                  UiHelper.CustomImage(imgurl: "Messanger.png"),
                  Spacer(),
                  UiHelper.CustomImage(imgurl: "Save.png"),
                ],
              ),
            ),

            // Liked info
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 4),
              child: Row(
                children: [
                  UiHelper.CustomImage(imgurl: "Ovalone.png"),
                  SizedBox(width: 8),
                  Text(
                    "Liked by craig_love and 44,686 others",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Caption
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "joshua_l",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      "The game in Japan was amazing and I want...",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
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
