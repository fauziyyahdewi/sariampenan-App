import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/list_approval_request_page.dart';
import 'package:sariampenan/widgets/detail_item_box.dart';

class DetailRequestPage extends StatefulWidget {
  final String noPPK;
  const DetailRequestPage({super.key, required this.noPPK});

  @override
  State<DetailRequestPage> createState() => _DetailRequestPageState();
}

class _DetailRequestPageState extends State<DetailRequestPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.noPPK.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

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
                MaterialPageRoute(
                    builder: (context) => ListApprovalRequestPage()),
              );
            },
          ),
        ),
        title: Text(
          'Approval Barang PPK',
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: mySetup.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.05 * height),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Nomor PPKK',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: mySetup.primaryColor),
                  ),
                ),
                Expanded(
                  child: TextField(
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: mySetup.primaryColor,
                        fontWeight: FontWeight.w500),
                    controller: _controller,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      filled: true,
                      focusColor: const Color.fromRGBO(5, 105, 220, 1),
                      fillColor: const Color.fromRGBO(239, 240, 243, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(239, 240, 243, 1),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(239, 240, 243, 1),
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(239, 240, 243, 1),
                          width: 1.0,
                        ),
                      ),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: mySetup.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(8, (index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
              child: DetailItemBox(),
            );
          }),
        ),
      ),
    );
  }
}
