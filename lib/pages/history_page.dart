import 'package:flutter/material.dart';
import 'package:sariampenan/pages/approval_item_page.dart';
import 'package:sariampenan/utilities.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: mColor,
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
          style: tFOnt(
            fontSize: 18,
            color: mColor,
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
                    style: tFOnt(
                      fontSize: 15,
                      color: mColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Kapal: ' + 'Kargo',
                    style: tFOnt(
                      fontSize: 13,
                      color: mColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Bagian: ' + 'Kabin',
                    style: tFOnt(
                      fontSize: 13,
                      color: mColor,
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
                  style: tFOnt(
                    fontSize: 15,
                    color: mColor,
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
                  style: tFOnt(
                    fontSize: 15,
                    color: mColor,
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
