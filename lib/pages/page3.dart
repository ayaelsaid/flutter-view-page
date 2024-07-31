import 'package:flutter/material.dart';
import 'package:pageview/static_colors.dart';
import 'package:pageview/widegts/pages_common_content.dart';

class OnboardingPage3 extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;

  const OnboardingPage3(
      {super.key, required this.onSkip, required this.onNext});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        'assets/images/amico.png',
        'Offline Access',
        'Make your course available offline',
      ),
    );
  }
}
