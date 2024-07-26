import 'package:flutter/material.dart';
import 'package:sariampenan/pages/approval_item_page.dart';
import 'package:sariampenan/utilities.dart';

class DetailItemBox extends StatefulWidget {
  const DetailItemBox({super.key});

  @override
  State<DetailItemBox> createState() => _DetailItemBoxState();
}

class _DetailItemBoxState extends State<DetailItemBox> {
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
                  style: tFOnt(
                    color: mColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Nama Jenis Barang: ',
                      children: [
                        TextSpan(
                          text: "Lampu TL 18W\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Sisa Stock: ',
                      children: [
                        TextSpan(
                          text: "0\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Qnt Permintaan: ',
                      children: [
                        TextSpan(
                          text: "10 Pcs\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Qnt Approved: ',
                      children: [
                        TextSpan(
                          text: "-\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Status: ',
                      children: [
                        TextSpan(
                          text: "Verified",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // edit icon
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApproveItemPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: mColor,
                    borderRadius: BorderRadius.circular(5)),
                child: const Icon(Icons.check, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
