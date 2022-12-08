import 'package:flutter/material.dart';

class HighlightTab extends StatelessWidget {
  const HighlightTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                child: Icon(Icons.add),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'ไฮไลท์',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
