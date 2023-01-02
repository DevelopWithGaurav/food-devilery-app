import 'package:flutter/material.dart';
import 'package:food_delivery_ui_app/constant.dart';
import 'package:food_delivery_ui_app/model/recipes.dart';
import 'package:food_delivery_ui_app/widget/section_title.dart';

class BreakfastSection extends StatelessWidget {
  const BreakfastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Breakfast Recommendations',
          image: 'assets/png/breakfast-bowl.png',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...allRecipes.map(
                (e) => RecipeCard(e: e),
              ),
            ],
          ),
        ),
        const SizedBox(height: kDefaultPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...allRecipes.map(
                (e) => RecipeCard(e: e),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.e});

  final RecipesModel e;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    const double width = 168.0;
    return Container(
      width: width,
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: width,
              height: 100,
              child: Image.network(
                e.img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            e.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber.shade900,
                size: 15,
              ),
              Text(
                ' ${e.rating} - ${e.time}',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
