import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/history_page.dart';
import 'package:sariampenan/pages/main_page.dart';

class ApprovePpkkPage extends StatefulWidget {
  const ApprovePpkkPage({super.key});

  @override
  State<ApprovePpkkPage> createState() => _ApprovePpkkPageState();
}

class _ApprovePpkkPageState extends State<ApprovePpkkPage> {
  int quantity = 0;
  String selectedStock = 'pcs';
  String selectedRequest = 'pcs';
  List<String> units = ['pcs', 'kg', 'ltr'];

  final TextEditingController txtStock = TextEditingController();
  final TextEditingController txtRequest = TextEditingController();

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
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          ),
        ),
        title: Text(
          'Approval PPKK Kapal',
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: mySetup.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
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
                          'Nama Barang: ',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          style: GoogleFonts.poppins(fontSize: 13),
                          onSubmitted: (value) {
                            //
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Pilih Nama Barang",
                            hintStyle: GoogleFonts.poppins(fontSize: 13),
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            prefixIconConstraints:
                                const BoxConstraints(), // harus ada agar ditengah
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: mySetup.primaryColor, width: 1),
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
                          'Kota Supply: ',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          style: GoogleFonts.poppins(fontSize: 13),
                          onSubmitted: (value) {
                            //
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Pilih Kota",
                            hintStyle: GoogleFonts.poppins(fontSize: 13),
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            prefixIconConstraints:
                                const BoxConstraints(), // harus ada agar ditengah
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: mySetup.primaryColor, width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Input Sisa Stock
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sisa Stock',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: txtStock,
                                readOnly: true,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontSize: 13),
                                keyboardType: TextInputType.number,
                                onSubmitted: (value) {
                                  setState(() {
                                    quantity = int.tryParse(value) ?? 0;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "0",
                                  hintStyle: GoogleFonts.poppins(fontSize: 13),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  prefixIconConstraints:
                                      const BoxConstraints(), // harus ada agar ditengah
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: mySetup.primaryColor, width: 1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                        txtStock.text = quantity.toString();
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity--;
                                        txtStock.text = quantity.toString();
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    quantity = int.tryParse(value) ?? 0;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintStyle: GoogleFonts.poppins(fontSize: 13),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  prefixIconConstraints: const BoxConstraints(),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: selectedStock,
                                    items: units.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,
                                            style: GoogleFonts.poppins(
                                                fontSize: 13)),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedStock = newValue!;
                                      });
                                    },
                                    isExpanded: true,
                                    style: GoogleFonts.poppins(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Input Permintaan
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Permintaan ',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextField(
                                controller: txtRequest,
                                readOnly: true,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontSize: 13),
                                keyboardType: TextInputType.number,
                                onSubmitted: (value) {
                                  setState(() {
                                    quantity = int.tryParse(value) ?? 0;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "0",
                                  hintStyle: GoogleFonts.poppins(fontSize: 13),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  prefixIconConstraints:
                                      const BoxConstraints(), // harus ada agar ditengah
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: mySetup.primaryColor, width: 1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                        txtRequest.text = quantity.toString();
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity--;
                                        txtRequest.text = quantity.toString();
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    quantity = int.tryParse(value) ?? 0;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Pilih Satuan',
                                  hintStyle: GoogleFonts.poppins(fontSize: 13),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  prefixIconConstraints: const BoxConstraints(),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: selectedRequest,
                                    items: units.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,
                                            style: GoogleFonts.poppins(
                                                fontSize: 13)),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedRequest = newValue!;
                                      });
                                    },
                                    isExpanded: true,
                                    style: GoogleFonts.poppins(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Input Keterangan
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Keterangan ',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          child: TextField(
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            style: GoogleFonts.poppins(fontSize: 13),
                            maxLines: 6,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Type here...",
                              hintStyle: GoogleFonts.poppins(fontSize: 13),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              prefixIconConstraints: const BoxConstraints(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: mySetup.primaryColor, width: 1),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    decoration: ShapeDecoration(
                      color: mySetup.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "View History",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              ),

              // Input Qnt Approved
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qnt Approval',
                      style: GoogleFonts.poppins(fontSize: 13),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            controller: txtStock,
                            readOnly: true,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(fontSize: 13),
                            keyboardType: TextInputType.number,
                            onSubmitted: (value) {
                              setState(() {
                                quantity = int.tryParse(value) ?? 0;
                              });
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "0",
                              hintStyle: GoogleFonts.poppins(fontSize: 13),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              prefixIconConstraints:
                                  const BoxConstraints(), // harus ada agar ditengah
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: mySetup.primaryColor, width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                    txtStock.text = quantity.toString();
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                              prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    quantity--;
                                    txtStock.text = quantity.toString();
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                quantity = int.tryParse(value) ?? 0;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InputDecorator(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintStyle: GoogleFonts.poppins(fontSize: 13),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(8, 3, 8, 3),
                              prefixIconConstraints: const BoxConstraints(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedStock,
                                items: units.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style:
                                            GoogleFonts.poppins(fontSize: 13)),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedStock = newValue!;
                                  });
                                },
                                isExpanded: true,
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

                            Container(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    decoration: ShapeDecoration(
                      color: mySetup.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "Approved",
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
          ),
        ),
      ),
    );
  }
}
