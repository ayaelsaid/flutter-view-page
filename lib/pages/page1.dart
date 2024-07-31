import 'package:flutter/material.dart';
import 'package:pageview/static_colors.dart';
import 'package:pageview/widegts/pages_common_content.dart';

class OnboardingPage1 extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;

  const OnboardingPage1(
      {super.key, required this.onSkip, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtility.scafoldBackground,
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            onPressed: onSkip,
            child: const Text('Skip',
                style: TextStyle(color: ColorUtility.mediumBlack)),
          ),
        ],
      ),
      body: pagesContent(
        'assets/images/badges.png',
        'Certificate and Badges',
        'Earn certificates after completion of every course',
      ),
    );
  }
}




