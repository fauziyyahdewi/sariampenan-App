import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MySetup {
  static final MySetup _mySetup = new MySetup._internal();
  static MySetup get instance => _mySetup;
  MySetup._internal();

  factory MySetup() {
    return _mySetup;
  }

  // Main
  Color get foreColor => Color(0xFF0e2e5b); //  Color(0xFF0295e3);
  Color get indicatorColor => Color(0xFF0e2e5b); //  Color(0xFF0295e3);

  // Custom
  Color get backgroundColor => Color(0xFFFFFFFF);
  Color get primaryColor => Color(0xFF0e2e5b);
  Color get secondaryColor => Color(0xFF00b0ef);
  Color get fontColor => Color(0xFF0e2e5b);
  Color get headerBkgColor => Color.fromARGB(255, 81, 209, 255);
  Color get headerIconColor => Color(0xFFFFFFFF);
  Color get menuIconColor => Color(0xFF0e2e5b); //  Color(0xFF353535);
  Color get dividerColor => Color(0xFF000000);
  Color get categoryBkgColor => Color(0xFF3d3d3d);
  Color get itemBkgColor => Color(0xFF353535);
  Color get listBkgColor => Color(0xFF101010);
}

final mySetup = MySetup();
