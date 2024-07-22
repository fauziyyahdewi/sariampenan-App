import 'package:flutter/material.dart';
import 'package:sariampenan/pages/history_page.dart';
// import 'package:project_1_kp/screens/HomePage.dart';
import 'package:sariampenan/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
