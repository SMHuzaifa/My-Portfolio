import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:huzaifa_portfolio/widgets/responsive.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool _showFirstText = true;

  @override
  void initState() {
    super.initState();
    // This will toggle the text after a delay
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showFirstText = false;
      });
      Future.delayed(const Duration(seconds: 4), () {
        setState(() {
          _showFirstText = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    TextStyle defaultTextStyle = const TextStyle(fontSize: 20.0); // Define a default TextStyle

    return ResponsiveWidget(
      mobile: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headlineMedium ?? defaultTextStyle,
            ),
            const SizedBox(height: 8),
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _showFirstText
                  ? TypewriterAnimatedTextKit(
                text: ['I am Syed Muhammad Huzaifa'],
                textStyle: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
                speed: const Duration(milliseconds: 200),
                repeatForever: true,
              )
                  : TypewriterAnimatedTextKit(
                text: ['I am a Flutter developer'],
                textStyle: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
                speed: const Duration(milliseconds: 200),
                repeatForever: true,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'I am a passionate Flutter developer dedicated to continuous learning and enhancing my problem-solving skills to build innovative mobile applications. I thrive in dynamic environments and am committed to delivering user-centric solutions. I have one plus year of experience and developed 3 apps in Flutter.',
              style: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
            ),
          ],
        ),
      ),
      tablet: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: Theme.of(context).textTheme.displaySmall ?? defaultTextStyle,
            ),
            const SizedBox(height: 16),
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _showFirstText
                  ? TypewriterAnimatedTextKit(
                text: ['I am Syed Muhammad Huzaifa'],
                textStyle: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
                speed: const Duration(milliseconds: 200),
                repeatForever: true,
              )
                  : TypewriterAnimatedTextKit(
                text: ['I am a Flutter developer'],
                textStyle: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
                speed: const Duration(milliseconds: 200),
                repeatForever: true,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'I am a passionate Flutter developer dedicated to continuous learning and enhancing my problem-solving skills to build innovative mobile applications. I thrive in dynamic environments and am committed to delivering user-centric solutions. I have one plus year of experience and developed 3 apps in Flutter.',
              style: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
            ),
          ],
        ),
      ),
      desktop: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: Theme.of(context).textTheme.displayMedium ?? defaultTextStyle,
            ),
            const SizedBox(height: 32),
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _showFirstText
                  ? TypewriterAnimatedTextKit(
                text: ['I am Syed Muhammad Huzaifa'],
                textStyle: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
                speed: const Duration(milliseconds: 2000),
                repeatForever: true,
              )
                  : TypewriterAnimatedTextKit(
                text: ['I am a Flutter developer'],
                textStyle: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
                speed: const Duration(milliseconds: 200),
                repeatForever: true,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'I am a passionate Flutter developer dedicated to continuous learning and enhancing my problem-solving skills to build innovative mobile applications. I thrive in dynamic environments and am committed to delivering user-centric solutions. I have one plus year of experience and developed 3 apps in Flutter.',
              style: Theme.of(context).textTheme.bodyLarge ?? defaultTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
