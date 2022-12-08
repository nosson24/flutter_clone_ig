import 'package:flutter/material.dart';

class ViewPostTab extends StatelessWidget {
  const ViewPostTab({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('asset/storybackground.jpg'),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children:  [
                      Text(name),
                      const Text('Description'),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('asset/more.png'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          color: Colors.grey[300],
          height: 300,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.messenger_outline_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('ถูกใจ 777 คน'),
              SizedBox(
                height: 8,
              ),
              Text('Detail massage'),
            ],
          ),
        ),
      ],
    );
  }
}
