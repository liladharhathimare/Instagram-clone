import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class FollowingScreen extends StatelessWidget {
  FollowingScreen({super.key});

  final List<Map<String, String>> arrContent = [
    {
      "img": "Oval (2).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (3).png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (4).png",
      "txt": "kiero_d started following craig_love. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (5).png",
      "txt": "craig_love liked 8 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (2).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (3).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (4).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (5).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: arrContent.length,
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemBuilder: (context, index) {
          final item = arrContent[index];
          return ListTile(
            leading: UiHelper.CustomImage(imgurl: item["img"]!),
            title: Text(
              item["txt"]!,
              style: const TextStyle(color: Colors.white),
            ),
            trailing: UiHelper.CustomImage(imgurl: item["lastimg"]!),
          );
        },
      ),
    );
  }
}
