import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/home_page/widget/post_tab/post_tab.dart';

import 'package:flutter_application_ig/pages/home_page/widget/story_tab/add_story.dart';
import 'package:flutter_application_ig/pages/home_page/widget/story_tab/story_tab.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const id = 'tasks_screen';

  final List people = [
    'Tony evar',
    'Capton',
    'Recycle',
    'Revenge',
    'Jead',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'asset/title.png',
          height: 35,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseFirestore.instance
                  .collection('user')
                  .add({'data': 'Myid'});
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: const [
              AddStoryTab(),
              StoryTab(),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return ViewPostTab(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
