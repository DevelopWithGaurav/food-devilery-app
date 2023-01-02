import 'package:flutter/material.dart';

import '../constant.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      color: Colors.grey.shade100,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FOOD\nDRIVE',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 55,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 5,
                ),
              ),
              Text(
                'The UN World Food Program',
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400, width: 1.5),
                  ),
                ),
                child: Text(
                  'DONATE NOW',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            left: 150,
            child: Image.asset(
              'assets/png/breakfast-bowl.png',
              width: 160,
            ),
          ),
        ],
      ),
    );
  }
}
