import 'package:flutter/material.dart';
// import 'package:badges/badges.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text Kit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 50,
                fontFamily: "Horizon",
                color: Colors.blue,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Shahzain Ahmed'),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Shahzain Ahmed",
                    textStyle: const TextStyle(
                      fontSize: 50,
                      fontFamily: "Horizon",
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
