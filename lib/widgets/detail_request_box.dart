import 'package:flutter/material.dart';
import 'package:sariampenan/pages/detail_request_page.dart';
import 'package:sariampenan/pages/input_detail_data_page.dart';
import 'package:sariampenan/utilities.dart';

class DetailRequestBox extends StatefulWidget {
  const DetailRequestBox({super.key});

  @override
  State<DetailRequestBox> createState() => _DetailRequestBoxState();
}

class _DetailRequestBoxState extends State<DetailRequestBox> {
  final String noPPK = "SBY240613003 - PPK";

    void _navigateToDetailRequest(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailRequestPage(noPPK: noPPK,)),
    );
  }

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
                style: tFOnt(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                  style: tFOnt(
                      color: mColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                  children: [
                    TextSpan(
                      text: 'Jenis Barang: ',
                      children: [
                        TextSpan(
                          text: "Lakban Bening\n",
                          style: tFOnt(
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
                          style: tFOnt(
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
                          style: tFOnt(
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
                        MaterialPageRoute(builder: (context) => InputDetailDataPage(onBack: () => _navigateToDetailRequest(context))),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: mColor,
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
