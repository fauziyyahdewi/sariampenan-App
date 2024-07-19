import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/MySetup.dart';
import 'package:sariampenan/pages/input_data_page.dart';

class RequestBox extends StatefulWidget {
  const RequestBox({super.key});

  @override
  State<RequestBox> createState() => _RequestBoxState();
}

class _RequestBoxState extends State<RequestBox> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    color: mySetup.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Nomor PPKK: ',
                      children: [
                        TextSpan(
                          text: "SBY240613003 - PPK\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Tanggal: ',
                      children: [
                        TextSpan(
                          text: "13/06/2024\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Bagian: ',
                      children: [
                        TextSpan(
                          text: "Mesin\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'User: ',
                      children: [
                        TextSpan(
                          text: "Fitri\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Status: ',
                      children: [
                        TextSpan(
                          text: "Verified",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // favorit icon
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputDataPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: mySetup.primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
