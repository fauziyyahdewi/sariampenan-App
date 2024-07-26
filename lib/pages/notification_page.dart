import 'package:flutter/material.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/utilities.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Notification',
          style: tFOnt(
              fontSize: 18,
              color: mColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('notifation page'),
      ),
    );
  }
}
