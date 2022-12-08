import 'package:flutter/material.dart';

class AddStoryTab extends StatelessWidget {
  const AddStoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 12,
      ),
      child: Column(
        children: [
          Stack(
            children: const [
              CircleAvatar(
                radius: 39,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 37,
                ),
              ),
              Positioned(
                  right: -2.0,
                  bottom: -2.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('asset/addstory.png'),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'สตอรี่ของคุณ',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
