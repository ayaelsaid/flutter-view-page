import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pageview/pages/page1.dart';
import 'package:pageview/pages/page2.dart';
import 'package:pageview/pages/page3.dart';
import 'package:pageview/pages/page4.dart';

class PageView extends StatefulWidget {
  const PageView({super.key});

  @override
  State<PageView> createState() => _PageViewState();
}

class _PageViewState extends State<PageView>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  int _currentPageIndex = 0;
  final int _pageCount = 4; // Number of pages

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
            controller: _pageViewController,
            onPageChanged: _handlePageViewChanged,
            children: <Widget>[
              OnboardingPage1(
                onSkip: _skip,
                onNext: () => _updateCurrentPageIndex(1),
              ),
              OnboardingPage2(
                onSkip: _skip,
                onNext: () => _updateCurrentPageIndex(2),
              ),
              OnboardingPage3(
                onSkip: _skip,
                onNext: () => _updateCurrentPageIndex(3),
              ),
              OnboardingPage4(
                onNext: _finishOnboarding,
              ),
            ],
          ),
          PageIndicator(
            currentPageIndex: _currentPageIndex,
            onUpdateCurrentPageIndex: _updateCurrentPageIndex,
            isOnDesktopAndWeb: _isOnDesktopAndWeb,
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _updateCurrentPageIndex(int index) {
    if (index >= 0 && index < _pageCount) {
      _pageViewController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _skip() {
    int nextPage = _currentPageIndex + 1;
    if (nextPage < _pageCount) {
      _pageViewController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _finishOnboarding() {
    return;
  }

  bool get _isOnDesktopAndWeb {
    if (kIsWeb) {
      return true;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return true;
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        return false;
    }
  }
}
