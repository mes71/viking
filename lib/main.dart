import 'package:flutter/material.dart';

import 'ui/page/index/index.dart';
import 'ui/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viking Tour',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: bgColor),
          useMaterial3: true,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: bgPrimaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  textStyle: Theme.of(context).textTheme.labelLarge)),
          tabBarTheme: const TabBarTheme(
              labelPadding: EdgeInsets.symmetric(vertical: 10),
              indicatorColor: Colors.transparent,
              labelColor: bgPrimaryColor,
              labelStyle: TextStyle(fontSize: 20, color: bgPrimaryColor),
              unselectedLabelStyle: TextStyle(fontSize: 18),
              unselectedLabelColor: bgDarkGray)),
      home: const IndexScreen(),
    );
  }
}
