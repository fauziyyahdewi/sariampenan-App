import 'package:flutter/material.dart';
import 'package:sariampenan/pages/input_data_page.dart';
import 'package:sariampenan/utilities.dart';

class RequestBox extends StatefulWidget {
  const RequestBox({super.key});

  @override
  State<RequestBox> createState() => _RequestBoxState();
}

class _RequestBoxState extends State<RequestBox> {
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
                      text: 'Nomor PPKK: ',
                      children: [
                        TextSpan(
                          text: "SBY240613003 - PPK\n",
                          style: tFOnt(
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
                          style: tFOnt(
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
                          style: tFOnt(
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
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Submit: ',
                      children: [
                        TextSpan(
                          text: "\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Verified: ',
                      children: [
                        TextSpan(
                          text: "\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Approved: ',
                      children: [
                        TextSpan(
                          text: "\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'On Progress: ',
                      children: [
                        TextSpan(
                          text: "\n",
                          style: tFOnt(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    TextSpan(
                      text: 'Finished: ',
                      children: [
                        TextSpan(
                          text: "",
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
                        color: mColor,
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
