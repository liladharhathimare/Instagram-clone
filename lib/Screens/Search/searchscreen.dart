import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<String> arrContent = [
    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    "https://pixlr.com/images/generator/how-to-generate.webp",
    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    "https://pixlr.com/images/generator/how-to-generate.webp",
    // Repeating for display
    "https://pixlr.com/images/generator/how-to-generate.webp",

    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    "https://pixlr.com/images/generator/how-to-generate.webp",
    "https://pixlr.com/images/generator/how-to-generate.webp",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg",
    "https://pixlr.com/images/generator/how-to-generate.webp",
  ];

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFF262626),
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: UiHelper.CustomImage(imgurl: "Search Icon.png"),
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Color(0XFF8E8E93),
                          fontWeight: FontWeight.normal,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                UiHelper.CustomImage(imgurl: "Live.png"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                _buildFilterChip("IGTV", icon: "Icon (2).png"),
                _buildFilterChip("Shop", icon: Icons.shopping_bag),
                _buildFilterChip("Style"),
                _buildFilterChip("Sports"),
                _buildFilterChip("Auto"),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              itemCount: arrContent.length,
              padding: const EdgeInsets.all(2),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    arrContent[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, {dynamic icon}) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        children: [
          if (icon != null)
            icon is String
                ? UiHelper.CustomImage(imgurl: icon)
                : Icon(icon, size: 15, color: Colors.white),
          if (icon != null) const SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
          ),
        ],
      ),
    );
  }
}
