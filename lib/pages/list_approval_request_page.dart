import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/main_page.dart';
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
      backgroundColor: mySetup.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: mySetup.primaryColor,
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
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: mySetup.primaryColor,
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
