import 'package:flutter/material.dart';

class StoryTab extends StatelessWidget {
  const StoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 12,
      ),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 39,
            backgroundImage: AssetImage('asset/storybackground.jpg'),
            child: CircleAvatar(
              radius: 37,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'user name',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
