
// Chapter Seven getting Started with Flutter

// Topics Covered in Chapter Seven
// 1-  Pubspec.yaml
// 2-  Read More
// 3- Badges Packages
// 4- Animated Text Kit
// 5- Single Scroll Bar View
// 6- Pin Code Widget
// 7- Pin Code Fields
//



import 'package:flutter/material.dart';
import 'package:flutter_chapter07/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeView(), // 👈 Updated here
    );
  }
}
