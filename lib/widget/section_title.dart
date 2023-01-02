import 'package:flutter/material.dart';

import '../constant.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(width: 5),
          Image.asset(
            image,
            width: kDefaultIconSize,
          )
        ],
      ),
    );
  }
}
