import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/widgets/request_box.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

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
                    controller: _searchController,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        size: 18,
                      ),
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
                      hintText: 'Search Your Link',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12.0,
                        color: Color.fromRGBO(139, 141, 152, 1),
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          onPressed: () {},
          backgroundColor: mySetup.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
