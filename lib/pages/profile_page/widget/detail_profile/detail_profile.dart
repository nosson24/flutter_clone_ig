import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/detail_profile/card/card_detail_profile.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/highlight/highlight.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 48,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CardDetailProfile(
                      titleText: Text(
                        '14',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subText: Text(
                        'โพลต์',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CardDetailProfile(
                      titleText: Text(
                        '98',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subText: Text(
                        'ผู้ติดตาม',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CardDetailProfile(
                      titleText: Text(
                        '168',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subText: Text(
                        'กำลังติดตาม',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 4,
            ),
            child: Text(
              'User name',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 4,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('List detail'),
              ),
            ),
          ),

          Row(
            children: const [
              HighlightTab(),
              HighlightTab(),
            ],
          ),

        ],
      ),
    );
  }
}
