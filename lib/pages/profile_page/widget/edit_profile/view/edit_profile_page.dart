import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: const Text(
                'ยกเลิก',
                style: TextStyle(color: Colors.black87),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Text(
              'แก้ไขโปรไฟล์',
              style: TextStyle(color: Colors.black87),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'เสร็จ',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
