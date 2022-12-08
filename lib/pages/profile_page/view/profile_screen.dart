import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/detail_profile/detail_profile.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/edit_profile/edit_profile_tab.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/my_post_tab/my_post.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/my_post_tab/tags_post.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const id = 'tasks_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: [
            const DetailProfile(),
            const EditProfileTab(),
            const SizedBox(
              height: 24,
            ),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.format_list_bulleted_rounded,
                    color: Colors.black87,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person_pin_outlined,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const MyPostTab(),
                  TagsPostTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: const [
          Icon(
            Icons.lock_outline,
            color: Colors.black87,
            size: 18,
          ),
          Text(
            'User Name ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black87,
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_box_outlined,
            color: Colors.black87,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.dehaze_sharp,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
