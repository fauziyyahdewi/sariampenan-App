import 'package:flutter/material.dart';
import 'package:sariampenan/pages/login_page.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/session_manager.dart';
import 'package:sariampenan/utilities.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final SessionManager sessionManager = SessionManager();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.arrow_back),
            ),
            color: mColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          ),
        ),
        title: Text(
          'Profile',
          style: tFOnt(
              fontSize: 18,
              color: mColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: content(),
        ),
      ),
    );
  }

  Widget content() {
    Future<void> _logout() async {
      // Panggil metode logout dari SessionManager
      await sessionManager.clearSession();

      // Arahkan ke halaman login dan hapus halaman sebelumnya dari stack
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
        (route) => false,
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: GestureDetector(
        onTap: _logout,
        child: ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.red,
          ),
          title: Text(
            'Logout',
            style: tFOnt(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
