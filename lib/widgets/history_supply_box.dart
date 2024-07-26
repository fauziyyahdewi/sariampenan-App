import 'package:flutter/material.dart';
import 'package:sariampenan/utilities.dart';

class HistorySupplyBox extends StatefulWidget {
  const HistorySupplyBox({super.key});

  @override
  State<HistorySupplyBox> createState() => _HistorySupplyBoxState();
}

class _HistorySupplyBoxState extends State<HistorySupplyBox> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: RichText(
        text: TextSpan(
          style: tFOnt(
            color: mColor,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: 'Tanggal: ',
              children: [
                TextSpan(
                  text: "13/06/2024\n",
                  style: tFOnt(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'Qnt: ',
              children: [
                TextSpan(
                  text: "15\n",
                  style: tFOnt(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'Kota Supplay: ',
              children: [
                TextSpan(
                  text: "Surabaya\n",
                  style: tFOnt(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'No. PO: ',
              children: [
                TextSpan(
                  text: " \n",
                  style: tFOnt(
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            TextSpan(
              text: 'No. Bukti: ',
              children: [
                TextSpan(
                  text: " ",
                  style: tFOnt(
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
