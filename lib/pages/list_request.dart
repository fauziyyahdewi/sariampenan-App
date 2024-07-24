import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/input_detail_data_page.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/widgets/request_box.dart';

class ListRequestPage extends StatefulWidget {
  const ListRequestPage({super.key});

  @override
  State<ListRequestPage> createState() => _ListRequestPageState();
}

class _ListRequestPageState extends State<ListRequestPage> {
  void _navigateToListRequest(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListRequestPage()),
    );
  }

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
            icon: const Icon(Icons.arrow_back),
            color: mySetup.primaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
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
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              child: RequestBox(),
            );
          }),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
          bottom: 10,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputDetailDataPage(onBack: () => _navigateToListRequest(context),),
              ),
            );
          },
          backgroundColor: mySetup.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
