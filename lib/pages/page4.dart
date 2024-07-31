import 'package:flutter/material.dart';
import 'package:pageview/static/static_image.dart';
import 'package:pageview/widegts/pages_common_content.dart';

class OnboardingPage4 extends StatelessWidget {
  final VoidCallback onNext;

  const OnboardingPage4({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pagesContent(
      ImageUtility.pana,
      'Course Catalog',
      'View in which courses you are enrolled',
    )
    );
  }
}
