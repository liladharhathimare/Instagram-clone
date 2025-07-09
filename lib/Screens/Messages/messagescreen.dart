import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class MessageScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> arrContent = [
    {
      "img": "Oval.png",
      "name": "Bhavesh",
      "lastmsg": "Have a nice day, bro!",
    },
    {
      "img": "Oval (1).png",
      "name": "Utkarsh",
      "lastmsg": "I heard this is a good movie, s…",
    },
    {
      "img": "Oval (2).png",
      "name": "Yashika",
      "lastmsg": "See you on the next meeting!",
    },
    {
      "img": "Oval (3).png",
      "name": "Kavya",
      "lastmsg": "Sounds good 😂😂😂",
    },
    // You can repeat these as needed
  ];

  MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.back),
        ),
        title: const Text(
          "Lalit_Hathimare",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFF9F9F9),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white, size: 28),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF262626),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    color: Color(0xFF8E8E93),
                    fontWeight: FontWeight.normal,
                  ),
                  prefixIcon: UiHelper.CustomImage(imgurl: "Search Icon.png"),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                final item = arrContent[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/${item["img"]}"),
                  ),
                  title: Text(
                    item["name"] ?? "",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    item["lastmsg"] ?? "",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: UiHelper.CustomImage(imgurl: "Picture.png"),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF121212),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "Icon (4).png"),
              const SizedBox(width: 5),
              const Text(
                "Camera",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF3897F0),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
