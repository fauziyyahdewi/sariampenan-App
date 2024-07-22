import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingRequest extends StatefulWidget {
  const SettingRequest({super.key});

  @override
  State<SettingRequest> createState() => _SettingRequestState();
}

class _SettingRequestState extends State<SettingRequest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tugas Perbaikan Kapal:',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '- ' + 'Perbaikan Kapal Bagian A',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '- ' + 'Perbaikan Kapal Bagian B',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '- ' + 'Perbaikan Kapal Bagian C',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ));
  }
}