import 'package:flutter/material.dart';

import '../widget/popular_brands.dart';
import '../widget/breakfast_section.dart';
import '../widget/BannersTwo.dart';
import '../widget/footer.dart';
import '../widget/categories_section.dart';
import '../widget/restaurants_banner.dart';
import '../widget/bottom_bar.dart';
import '../constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leadingWidth: 120,
        title: Row(
          children: const [
            Text(
              'Whitefield',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.expand_more,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/discount.png',
                  width: kDefaultIconSize,
                  height: kDefaultIconSize,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Offers',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: kDefaultPadding),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: RestaurantsBanner(),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Categories(),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            BannersTwo(),
            SizedBox(height: kDefaultPadding * 1.5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: BreakfastSection(),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: PopularBrands(),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            Footer(),
            SizedBox(height: kDefaultPadding * 1.5),
          ],
        ),
      ),
    );
  }
}
