import 'package:flutter/material.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/utilities.dart';
import 'package:sariampenan/widgets/approval_request_box.dart';

class ListApprovalRequestPage extends StatefulWidget {
  const ListApprovalRequestPage({super.key});

  @override
  State<ListApprovalRequestPage> createState() =>
      _ListApprovalRequestPageState();
}

class _ListApprovalRequestPageState extends State<ListApprovalRequestPage> {
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
            icon: Icon(Icons.arrow_back),
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
          'Permintaan Logistic Kapal',
          style: tFOnt(
              fontSize: 18,
              color: mColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(8, (index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              child: ApprovalRequestBox(),
            );
          }),
        ),
      ),
    );
  }
}
