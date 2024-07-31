import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pageview/pages/view_page.dart';
import 'package:pageview/static/static_colors.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtility.scafoldBackground,
        colorScheme:
            ColorScheme.fromSeed(seedColor: ColorUtility.scafoldBackground),
        useMaterial3: true,
      ),
      home: const PageViewCourses(),
    );
  }
}
