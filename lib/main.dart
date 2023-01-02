import 'package:flutter/material.dart';

import 'helper/default_scroll_behavior.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      scrollBehavior: DefaultScrollBehaviour(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 227, 57, 56),
          secondary: const Color.fromARGB(255, 107, 156, 248),
          tertiary: const Color.fromARGB(255, 207, 207, 207),
        ),
        // textTheme: TextTheme(
        //   headline3: TextStyle(
        //     color: Colors.pink,
        //   ),
        //   bodySmall: TextStyle()
        // ),
      ),
      home: const HomeScreen(),
    );
  }
}
