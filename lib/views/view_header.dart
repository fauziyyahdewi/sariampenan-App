import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/MySetup.dart';

Widget headerContainer(String title) {
  return Container(
    padding: EdgeInsets.only(top: 40, bottom: 0.0),
    color: mySetup.primaryColor, //  Color(0xFF242424),
    alignment: Alignment.center,
    child: Text(
      title,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget waveContainer({required Widget child, double height = 100.0}) {
  return Container(
    height: height,
    color: mySetup.backgroundColor, //  Color(0xFF101010),
    width: double.infinity,
    child: CustomPaint(
      painter: WavePainter(),
      child: child,
    ),
  );
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;
    var path = Path();
    var halfSize = size.height / 2;
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, halfSize, halfSize + halfSize / 2, halfSize);
    path.lineTo(size.width - halfSize - halfSize / 2, halfSize);
    path.quadraticBezierTo(size.width, halfSize, size.width, 0);
    path.lineTo(0, 0);
    path.close();
    paint.color = mySetup.primaryColor; //Color(0xFF242424);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
