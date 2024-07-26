import 'package:flutter/material.dart';
import 'package:sariampenan/model/user.dart';
import 'package:sariampenan/pages/login_page.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/session_manager.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final SessionManager sessionManager = SessionManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<User>(
        future: sessionManager.loadUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Tangani error jika terjadi
            return Center(child: Text('Terjadi kesalahan: ${snapshot.error}',));
          } else {
            final user = snapshot.data!;
            // Arahkan ke LoginPage jika tidak ada user (dengan ID kosong), dan ke MainPage jika ada user
            return user.id.isEmpty ? LoginPage() : MainPage();
          }
        },
      ),
    );
  }
}
