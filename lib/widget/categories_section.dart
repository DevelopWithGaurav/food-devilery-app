import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/section_title.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
            title: 'Categories', image: 'assets/icons/serve.png'),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            childAspectRatio: 1 / 1,
            crossAxisCount:
                ((MediaQuery.of(context).size.width / 392) * 4).round(),
          ),
          itemBuilder: (ctx, index) => categoryItem(index),
        ),
      ],
    );
  }

  Widget categoryItem(int index) {
    return Column(
      children: [
        Image.asset(
          categories[index].img,
          width: 50,
        ),
        const SizedBox(height: 5),
        Text(
          categories[index].label,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
