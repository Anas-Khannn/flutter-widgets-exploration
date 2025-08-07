

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: badges.Badge(
              badgeContent: const Text('3'),
              badgeAnimation: const badges.BadgeAnimation.scale(
                animationDuration: Duration(seconds: 3),
                curve: Curves.easeInOut,
              ),
              child: const Icon(Icons.shopping_cart),
            ),
          ),
          const SizedBox(width: 10),
        ],
        title: const Text('Pubspec.yaml'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Pin Code Widget
              // Pin Code Fields

              PinCodeTextField(
                  appContext: context,
                  length: 4,
                keyboardType: TextInputType.number,
                cursorColor: Colors.teal,
                animationDuration: const Duration(milliseconds: 300),
                obscureText: true,
                animationType: AnimationType.fade,
                obscuringCharacter: 'X',
                enableActiveFill: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,



                ),
                onChanged: (value){

                },
              ),



            ],
          ),
        ),
      ),
    );
  }
}



//                                 Source Code
// 1 -  Read More
// ReadMoreText(
//                 " What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
//
//                   trimLines: 1,
//                   colorClickableText: Colors.pink,
//                   trimMode: TrimMode.Line,
//                   trimCollapsedText: 'Show more',
//                   trimExpandedText: 'Show less',
//
//               ),

// 2- Badges Packages
// children: [
//               Center(
//                 child: badges.Badge(
//
//                   badgeContent: const Text('3'),
//           badgeAnimation: const badges.BadgeAnimation.scale(
//             animationDuration: Duration(seconds: 3),
//             curve: Curves.easeInOut,
//           ),
//
//                   child: const Icon(Icons.settings),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Center(
//                 child: badges.Badge(
//
//                   badgeContent: const Text('3'),
//                   badgeAnimation: const badges.BadgeAnimation.scale(
//                     animationDuration: Duration(seconds: 3),
//                     curve: Curves.easeInOut,
//                   ),
//
//                   child: const Icon(Icons.shopping_cart),
//                 ),
//               ),
//
//
//             ],

// 3 -  Single Scroll Bar View
// child: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 AnimatedTextKit(
//                     animatedTexts: [
//                       FadeAnimatedText(
//                         'Anas Khan Developer'
//                       ),
//
//                     ]),
//
//               ],
//             ),
//           ),
//         ),

// 4 - Animated Text Kit
// children: [
//               badges.Badge(
//                 badgeContent: const Text('3'),
//                 badgeAnimation: const badges.BadgeAnimation.scale(
//                   animationDuration: Duration(seconds: 3),
//                   curve: Curves.easeInOut,
//                 ),
//                 child: const Icon(Icons.shopping_cart, size: 32),
//               ),
//
//               const SizedBox(height: 20),
//
//               AnimatedTextKit(
//                 animatedTexts: [
//                   FadeAnimatedText(
//                     // Circular motion
//                     // side
//                     // Every Side Animation
//
//                     'Anas Khan Developer',
//                     textStyle: const TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//                 isRepeatingAnimation: true,
//                 repeatForever: true,
//               ),
//             ],




