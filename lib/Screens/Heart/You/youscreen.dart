import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }

  Widget messageButton(String text) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white54),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Center(child: Text(text, style: const TextStyle(color: Colors.white))),
    );
  }

  Widget activityTile({
    required String img,
    required String text,
    String? trailingImg,
    bool isMessageButton = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: ListTile(
        leading: UiHelper.CustomImage(imgurl: img),
        title: Text(
          text,
          style: const TextStyle(fontSize: 13, color: Colors.white),
        ),
        trailing: isMessageButton
            ? messageButton("Message")
            : trailingImg != null
            ? UiHelper.CustomImage(imgurl: trailingImg)
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            sectionTitle("Follow Requests"),
            sectionTitle("New"),
            activityTile(
              img: "Oval (4).png",
              text: "karennne liked your photo. 1h",
              trailingImg: "Rectangle.png",
            ),
            sectionTitle("Today"),
            activityTile(
              img: "Profiles.png",
              text: "karennne liked your photo. 1h",
              trailingImg: "Rectangle.png",
            ),
            sectionTitle("This Week"),
            activityTile(
              img: "Oval (5).png",
              text: "craig_love mentioned you in a comment: @jacob_w exactly..",
              trailingImg: "Rectangle.png",
            ),
            activityTile(
              img: "Oval (6).png",
              text: "martini_rond started following you. 3d",
              isMessageButton: true,
            ),
            activityTile(
              img: "Oval (7).png",
              text: "maxjacobson started following you. 3d",
              isMessageButton: true,
            ),
            sectionTitle("This Month"),
            activityTile(
              img: "Oval (5).png",
              text: "craig_love mentioned you in a comment: @jacob_w exactly..",
              trailingImg: "Rectangle.png",
            ),
            activityTile(
              img: "Oval (6).png",
              text: "martini_rond started following you. 3d",
              isMessageButton: true,
            ),
            activityTile(
              img: "Oval (7).png",
              text: "maxjacobson started following you. 3d",
              isMessageButton: true,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
