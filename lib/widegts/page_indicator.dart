import 'package:flutter/material.dart';
import 'package:pageview/static/static_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
    required this.isOnDesktopAndWeb,
  });

  final int currentPageIndex;
  final void Function(int) onUpdateCurrentPageIndex;
  final bool isOnDesktopAndWeb;

  @override
  Widget build(BuildContext context) {
    if (!isOnDesktopAndWeb) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 40.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentPageIndex == index
                      ? ColorUtility.secondrey
                      : ColorUtility.mediumBlack,
                ),
              );
            }),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                child: IconButton(
                  splashRadius: 16.0,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (currentPageIndex > 0) {
                      onUpdateCurrentPageIndex(currentPageIndex - 1);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 32.0,
                    color: ColorUtility.scafoldBackground,
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      ColorUtility.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 200),
              Container(
                width: 50,
                height: 50,
                child: IconButton(
                  splashRadius: 16.0,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (currentPageIndex < 3) {
                      // Corrected here
                      onUpdateCurrentPageIndex(currentPageIndex + 1);
                    }
                  },
                  icon: const Icon(Icons.arrow_forward_outlined,
                      size: 30.0, color: ColorUtility.scafoldBackground),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      ColorUtility.secondrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
