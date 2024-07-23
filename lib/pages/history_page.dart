import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/approval_item_page.dart';
import 'package:sariampenan/widgets/history_supply_box.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mySetup.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: mySetup.primaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApproveItemPage()),
              );
            },
          ),
        ),
        title: Text(
          'History Barang',
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: mySetup.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detail',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: mySetup.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Kapal: ' + 'Kargo',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: mySetup.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Bagian: ' + 'Kabin',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: mySetup.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // History Supply
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                shape: const Border(),
                title: Text(
                  'History Supply',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: mySetup.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  HistorySupplyBox(),
                  HistorySupplyBox()
                ],
              ),
            ),

            // History Approval
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                shape: const Border(),
                title: Text(
                  'History Approval',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: mySetup.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  HistorySupplyBox(),
                  HistorySupplyBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
