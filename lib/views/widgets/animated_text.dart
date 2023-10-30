import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidgets extends StatefulWidget {
  const AnimatedTextWidgets({super.key});

  @override
  State<AnimatedTextWidgets> createState() => _AnimatedTextWidgetsState();
}

class _AnimatedTextWidgetsState extends State<AnimatedTextWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Widgets'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'It is not enough to do your best,',
                  textAlign: TextAlign.center,
                  speed: const Duration(
                    milliseconds: 100,
                  ),
                ),
                TyperAnimatedText(
                  'you must know what to do,',
                  textAlign: TextAlign.center,
                  speed: const Duration(
                    milliseconds: 100,
                  ),
                ),
              ],
              totalRepeatCount: 5,
              displayFullTextOnTap: true,
              pause: const Duration(
                milliseconds: 200,
              ),
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText('do IT!'),
                FadeAnimatedText('do it RIGHT!!'),
                FadeAnimatedText('do it RIGHT NOW!!!'),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('AWESOME'),
                RotateAnimatedText('OPTIMISTIC'),
                RotateAnimatedText('DIFFERENT'),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World'),
                WavyAnimatedText('Look at the waves'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ],
        ),
      ),
    );
  }
}
