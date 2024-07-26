import 'package:flutter/material.dart';
import 'package:sariampenan/utilities.dart';

Widget createShortCutAsset(double size, String title, String imgName,
    {required Function onClick,
    Color bkgColor = Colors.grey,
    Color iconColor = Colors.deepOrange}) {
  return GestureDetector(
    onTap: () => onClick(),
    child: Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bkgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size * 2 / 5,
              child: Image.asset(
                imgName,
                fit: BoxFit.contain,
                color: iconColor,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: tFOnt(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget createShortCutIcon(
    double btnSize, double iconSize, String title, IconData icon,
    {required Function onClick,
    Color bkgColor = Colors.grey,
    Color iconColor = Colors.deepOrange}) {
  return GestureDetector(
    onTap: () => onClick(),
    child: Container(
      width: btnSize,
      height: btnSize,
      decoration: BoxDecoration(
        color: bkgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: btnSize * 2 / 5,
              child: Icon(
                icon,
                size: iconSize,
                color: iconColor,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: tFOnt(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
