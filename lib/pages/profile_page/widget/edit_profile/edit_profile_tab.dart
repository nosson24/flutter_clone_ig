import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/profile_page/widget/edit_profile/view/edit_profile_page.dart';

class EditProfileTab extends StatelessWidget {
  const EditProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EditProfilePage())),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black26,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
              child: const Text('แก้ไขโปรไฟล์'),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black26,
            ),
            width: 40,
            height: 40,
            child: IconButton(
              icon: const Icon(
                Icons.person_add_outlined,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
