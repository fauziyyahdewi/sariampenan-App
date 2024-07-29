import 'package:flutter/material.dart';
import 'package:sariampenan/pages/detail_request_page.dart';
import 'package:sariampenan/pages/history_page.dart';
import 'package:sariampenan/utilities.dart';

class ApproveItemPage extends StatefulWidget {
  const ApproveItemPage({super.key});

  @override
  State<ApproveItemPage> createState() => _ApproveItemPageState();
}

class _ApproveItemPageState extends State<ApproveItemPage> {
  int sisaStock = 0;
  int request = 0;
  int approval = 0;
  String selectedStock = 'pcs';
  String selectedRequest = 'pcs';
  String selectedApproval = 'pcs';
  List<String> units = ['pcs', 'kg', 'ltr'];

  final String noPPK = "SBY240613003 - PPK";

  final TextEditingController txtStock = TextEditingController();
  final TextEditingController txtRequest = TextEditingController();
  final TextEditingController txtApproval = TextEditingController();

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
                MaterialPageRoute(
                    builder: (context) => DetailRequestPage(
                          noPPK: noPPK,
                        )),
              );
            },
          ),
        ),
        title: Text(
          'Approval PPKK Kapal',
          style:
              tFOnt(fontSize: 18, color: mColor, fontWeight: FontWeight.bold),
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
                          style: tFOnt(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          style: tFOnt(fontSize: 13),
                          onSubmitted: (value) {
                            //
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Pilih Nama Barang",
                            hintStyle: tFOnt(fontSize: 13),
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            prefixIconConstraints:
                                const BoxConstraints(), // harus ada agar ditengah
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: mColor, width: 1),
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
                          style: tFOnt(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          style: tFOnt(fontSize: 13),
                          onSubmitted: (value) {
                            //
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Pilih Kota",
                            hintStyle: tFOnt(fontSize: 13),
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            prefixIconConstraints:
                                const BoxConstraints(), // harus ada agar ditengah
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: mColor, width: 1),
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
                          style: tFOnt(fontSize: 13),
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
                                style: tFOnt(fontSize: 13),
                                keyboardType: TextInputType.number,
                                onSubmitted: (value) {
                                  setState(() {
                                    sisaStock = int.tryParse(value) ?? 0;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "0",
                                  hintStyle: tFOnt(fontSize: 13),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  prefixIconConstraints:
                                      const BoxConstraints(), // harus ada agar ditengah
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: mColor, width: 1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        sisaStock++;
                                        txtStock.text = sisaStock.toString();
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        sisaStock--;
                                        txtStock.text = sisaStock.toString();
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    sisaStock = int.tryParse(value) ?? 0;
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
                                  hintStyle: tFOnt(fontSize: 13),
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
                                            style: tFOnt(fontSize: 13)),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedStock = newValue!;
                                      });
                                    },
                                    isExpanded: true,
                                    style: tFOnt(
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
                          style: tFOnt(fontSize: 13),
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
                                style: tFOnt(fontSize: 13),
                                keyboardType: TextInputType.number,
                                onSubmitted: (value) {
                                  setState(() {
                                    request = int.tryParse(value) ?? 0;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "0",
                                  hintStyle: tFOnt(fontSize: 13),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                  prefixIconConstraints:
                                      const BoxConstraints(), // harus ada agar ditengah
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: mColor, width: 1),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        request++;
                                        txtRequest.text = request.toString();
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        request--;
                                        txtRequest.text = request.toString();
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    request = int.tryParse(value) ?? 0;
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
                                  hintStyle: tFOnt(fontSize: 13),
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
                                            style: tFOnt(fontSize: 13)),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedRequest = newValue!;
                                      });
                                    },
                                    isExpanded: true,
                                    style: tFOnt(
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
                          style: tFOnt(fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          child: TextField(
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            style: tFOnt(fontSize: 13),
                            maxLines: 6,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Type here...",
                              hintStyle: tFOnt(fontSize: 13),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              prefixIconConstraints: const BoxConstraints(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: mColor, width: 1),
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
                      color: mColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "View History",
                      textAlign: TextAlign.center,
                      style: tFOnt(
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
                      style: tFOnt(fontSize: 13),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            controller: txtApproval,
                            readOnly: true,
                            textAlign: TextAlign.center,
                            style: tFOnt(fontSize: 13),
                            keyboardType: TextInputType.number,
                            onSubmitted: (value) {
                              setState(() {
                                approval = int.tryParse(value) ?? 0;
                              });
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "0",
                              hintStyle: tFOnt(fontSize: 13),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              prefixIconConstraints:
                                  const BoxConstraints(), // harus ada agar ditengah
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: mColor, width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    approval++;
                                    txtApproval.text = approval.toString();
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                              prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    approval--;
                                    txtApproval.text = approval.toString();
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                approval = int.tryParse(value) ?? 0;
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
                              hintStyle: tFOnt(fontSize: 13),
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
                                value: selectedApproval,
                                items: units.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child:
                                        Text(value, style: tFOnt(fontSize: 13)),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedApproval = newValue!;
                                  });
                                },
                                isExpanded: true,
                                style: tFOnt(fontSize: 13, color: Colors.black),
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
                      color: mColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "Approved",
                      textAlign: TextAlign.center,
                      style: tFOnt(
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
