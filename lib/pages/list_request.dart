import 'package:flutter/material.dart';
import 'package:sariampenan/pages/input_detail_data_page.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/utilities.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: mColor,
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
          backgroundColor: mColor,
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
