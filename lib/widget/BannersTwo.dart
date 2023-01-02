import 'package:flutter/material.dart';

import '../constant.dart';

class BannersTwo extends StatefulWidget {
  const BannersTwo({super.key});

  @override
  State<BannersTwo> createState() => _BannersTwoState();
}

class _BannersTwoState extends State<BannersTwo> {
  final _scrollController = ScrollController();
  int _visibleBanner = 0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {
          _visibleBanner = 1;
        });
      }
      if (_scrollController.offset <=
              _scrollController.position.minScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {
          _visibleBanner = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: kDefaultPadding),
              Container(
                width: MediaQuery.of(context).size.width - 60,
                margin: const EdgeInsets.only(right: kDefaultPadding),
                child: const BannerComponent(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: const BannerComponent(),
              ),
              const SizedBox(width: kDefaultPadding),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(50)),
              child: Stack(
                children: [
                  Align(
                    alignment: _visibleBanner == 0 ? Alignment.centerLeft : Alignment.centerRight,
                    child: Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BannerComponent extends StatelessWidget {
  const BannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            Theme.of(context).colorScheme.secondary.withGreen(211),
            Theme.of(context).colorScheme.secondary.withGreen(255),
          ],
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.blue.shade800,
                  ),
                  children: const [
                    TextSpan(
                      text: 'GRAB\n',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '60% OFF\n',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          'Relish on flavoursome \ncuisines & delights from \ntop eateries\n',
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  'EXPLORE NOW',
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/png/burger2.png',
              width: 165,
            ),
          ),
        ],
      ),
    );
  }
}
