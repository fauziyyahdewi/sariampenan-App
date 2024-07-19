import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/input_detail_data_page.dart';

class DetailRequestBox extends StatefulWidget {
  const DetailRequestBox({super.key});

  @override
  State<DetailRequestBox> createState() => _DetailRequestBoxState();
}

class _DetailRequestBoxState extends State<DetailRequestBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                '1.',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                      color: mySetup.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                  children: [
                    TextSpan(
                      text: 'Jenis Barang: ',
                      children: [
                        TextSpan(
                          text: "Lakban Bening\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Sisa Stock: ',
                      children: [
                        TextSpan(
                          text: "\n",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Permintaan: ',
                      children: [
                        TextSpan(
                          text: "2 Pcs",
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
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  // Tombol Edit
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InputDetailDataPage()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: mySetup.primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(Icons.edit, color: Colors.white),
                    ),
                  ),

                  const SizedBox(
                    width: 5,
                  ),

                  // Tombol Hapus
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
