import 'package:flutter/material.dart';

import '/constant.dart';
import '/widget/bottom_nav_item.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _activeIconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 1),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _activeIconIndex = 0;
                });
              },
              child: BottomNavItem(
                icon: Icons.home_filled,
                label: 'Home',
                isActive: _activeIconIndex == 0 ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _activeIconIndex = 1;
                });
              },
              child: BottomNavItem(
                icon: Icons.search,
                label: 'Search',
                isActive: _activeIconIndex == 1 ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _activeIconIndex = 2;
                });
              },
              child: BottomNavItem(
                icon: Icons.shopping_bag_outlined,
                label: 'Shop',
                isActive: _activeIconIndex == 2 ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _activeIconIndex = 3;
                });
              },
              child: BottomNavItem(
                icon: Icons.person_outline,
                label: 'Profile',
                isActive: _activeIconIndex == 3 ? true : false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
