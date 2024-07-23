import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sariampenan/model/ship_monitor.dart';

class TripMonitorBox extends StatefulWidget {
  final ShipMonitorDataModel ship;

  const TripMonitorBox({super.key, required this.ship});

  @override
  State<TripMonitorBox> createState() => _TripMonitorBoxState();
}

class _TripMonitorBoxState extends State<TripMonitorBox> {
  @override
  Widget build(BuildContext context) {
    ShipMonitorDataModel currentShip = widget.ship;
    String formattedDateId = DateFormat('dd/MM/yyyy').format(currentShip.tglID);
    String formattedDateTa = DateFormat('dd/MM/yyyy').format(currentShip.tglTA);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      // decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 13),
          children: [
            TextSpan(
              text: 'Tujuan: ',
              children: [
                TextSpan(
                  text:
                      '${currentShip.destinationFrom} - ${currentShip.destinationTo}\n',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 236, 152, 8),
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'Tanggal ID: ',
              children: [
                TextSpan(
                  text: "${formattedDateId}\n",
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
                  text: "${formattedDateTa}",
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
