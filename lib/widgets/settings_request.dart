import 'package:flutter/material.dart';
import 'package:sariampenan/utilities.dart';

class SettingRequest extends StatefulWidget {
  const SettingRequest({super.key});

  @override
  State<SettingRequest> createState() => _SettingRequestState();
}

class _SettingRequestState extends State<SettingRequest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tugas Perbaikan Kapal:',
              style: tFOnt(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '- ' + 'Perbaikan Kapal Bagian A',
                style: tFOnt(
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '- ' + 'Perbaikan Kapal Bagian B',
                style: tFOnt(
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '- ' + 'Perbaikan Kapal Bagian C',
                style: tFOnt(
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ));
  }
}
