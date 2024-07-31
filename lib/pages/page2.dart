import 'package:flutter/material.dart';
import 'package:pageview/widegts/pages_common_content.dart';

class OnboardingPage2 extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;

  const OnboardingPage2(
      {super.key, required this.onSkip, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            onPressed: onSkip,
            child: const Text('Skip', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: pagesContent(
        'assets/images/2.png',
        'Progress Tracking',
        'Check your Progress of every course',
      ),
    );
  }

 
}
