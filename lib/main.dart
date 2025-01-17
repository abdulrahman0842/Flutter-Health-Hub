import 'package:flutter/material.dart';
import 'package:health_hub/pages/home_page.dart';
import 'package:health_hub/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Hub',
      theme: MyTheme.lightTheme(context),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
