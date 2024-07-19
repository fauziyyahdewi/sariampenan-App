import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/input_detail_data_page.dart';
import 'package:sariampenan/pages/request_page.dart';
import 'package:sariampenan/widgets/detail_request_box.dart';

class InputDataPage extends StatefulWidget {
  const InputDataPage({super.key});

  @override
  State<InputDataPage> createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

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
                  MaterialPageRoute(builder: (context) => RequestPage()),
                );
              },
            ),
          ),
          title: Text(
            'Input PPKK Kapal',
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: mySetup.primaryColor,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            // Input Tanggal
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanggal: ',
                    style: GoogleFonts.poppins(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _dateController,
                    readOnly: true,
                    onTap: () => _selectDate(context),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "--/--/----",
                      hintStyle: GoogleFonts.poppins(fontSize: 15),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.calendar_month,
                          color: mySetup.primaryColor,
                        ),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(), // harus ada agar ditengah
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: mySetup.primaryColor, width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Input Bagian
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bagian: ',
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    style: GoogleFonts.poppins(fontSize: 15),
                    onSubmitted: (value) {
                      //
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Pilih Bagian Kapal",
                      hintStyle: GoogleFonts.poppins(fontSize: 15),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(), // harus ada agar ditengah
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: mySetup.primaryColor, width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InputDetailDataPage()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  decoration: ShapeDecoration(
                    color: mySetup.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text(
                    "Tambah Barang",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(8, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: DetailRequestBox(),
                      );
                    }),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  decoration: ShapeDecoration(
                    color: mySetup.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text(
                    "Simpan",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
