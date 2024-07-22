import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';

class TripMonitorBox extends StatefulWidget {
  const TripMonitorBox({super.key});

  @override
  State<TripMonitorBox> createState() => _TripMonitorBoxState();
}

class _TripMonitorBoxState extends State<TripMonitorBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      // decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 13
          ),
          children: [
            TextSpan(
              text: 'Tujuan: ',
              children: [
                TextSpan(
                  text: "Surabaya - Tarakan\n",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'Tanggal ID: ',
              children: [
                TextSpan(
                  text: "25/12/2024\n",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'Tanggal TA: ',
              children: [
                TextSpan(
                  text: "28/12/25",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
