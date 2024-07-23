import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/detail_request_page.dart';

class ApprovalRequestBox extends StatefulWidget {
  const ApprovalRequestBox({super.key});

  @override
  State<ApprovalRequestBox> createState() => _ApprovalRequestBoxState();
}

class _ApprovalRequestBoxState extends State<ApprovalRequestBox> {
  final String noPPK = "SBY240613003 - PPK";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Row(
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
                          text: noPPK + "\n" ,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 236, 152, 8),
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
                            fontWeight: FontWeight.w500,
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
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Progres: ',
                      children: [
                        TextSpan(
                          text: "5/10\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
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
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Verified: ',
                      children: [
                        TextSpan(
                          text: "",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // see icon
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailRequestPage(noPPK: noPPK,)),
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
                    child: Icon(Icons.remove_red_eye, color: Colors.white),
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
