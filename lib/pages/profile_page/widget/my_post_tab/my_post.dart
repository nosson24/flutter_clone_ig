import 'package:flutter/material.dart';

class MyPostTab extends StatefulWidget {
  const MyPostTab({super.key});

  @override
  State<MyPostTab> createState() => _MyPostTabState();
}

final List<String> userPosts = [];

class _MyPostTabState extends State<MyPostTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(color: Colors.pink[100]),
        );
      },
    );
  }
}
