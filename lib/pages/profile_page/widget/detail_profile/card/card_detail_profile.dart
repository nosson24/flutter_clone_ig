import 'package:flutter/material.dart';

class CardDetailProfile extends StatelessWidget {
  final Text titleText;
  final Text subText;

  const CardDetailProfile(
      {super.key, required this.titleText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          titleText,
          subText,
        ],
      ),
    );
  }
}
