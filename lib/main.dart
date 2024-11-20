import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_strings.dart';
import 'package:portfolio/views/main_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.portfolio,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainDashboard(),
    );
  }
}
