import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});
  static const id = 'tasks_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
    );
    // GridView.builder(
    //   itemCount: 5,
    //   gridDelegate:
    //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.all(2.0),
    //       child: Container(color: Colors.blue[100]),
    //     );
    //   },
    // );
  }
}
