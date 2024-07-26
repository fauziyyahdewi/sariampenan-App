import 'package:flutter/material.dart';
import 'package:sariampenan/utilities.dart';

Widget createShortCutInfo(
    double size, IconData icon, String title, String count, Color color,
    {required Function onClick}) {
  return GestureDetector(
    onTap: () => onClick(),
    child: Container(
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Icon(
                icon,
                size: size * 2 / 9,
                color: mColor,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    title,
                    style: tFOnt(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$count',
                    style: tFOnt(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget createShortCutOtherMenu(double btnSize, IconData icon, String title,
    {required Function onClick, Color bkgColor = const Color(0xFF0e2e5b)}) {
  return GestureDetector(
    onTap: () => onClick(),
    child: Container(
      width: btnSize,
      height: btnSize,
      decoration: BoxDecoration(
        color: bkgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: btnSize * 2 / 10,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: tFOnt(
                fontSize: btnSize * 1 / 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
