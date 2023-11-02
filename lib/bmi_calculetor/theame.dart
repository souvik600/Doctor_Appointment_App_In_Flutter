import 'package:flutter/material.dart';

import 'hextoint.dart';




  Color primary = Colors.blueGrey;
  Color secondary = Colors.greenAccent;
  Color primaryButtonColor =   Colors.blue; //HexColor("e74c3c");
  Color secondaryButtonColor = HexColor("212f3c");


  TextStyle headlines = TextStyle(letterSpacing: 2.0,fontSize: 20, color: Colors.white,fontWeight: FontWeight.w600);
  TextStyle boldNumber = TextStyle(color: HexColor("fbfbfb"), fontWeight: FontWeight.bold,fontSize: 50.0);
  TextStyle secondaryButtonColorStyle = TextStyle(color: secondaryButtonColor, fontWeight: FontWeight.bold,fontSize: 26.0);
  TextStyle primaryButtonStyle = TextStyle( fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: 1,wordSpacing: 2, color: secondaryButtonColor);
  TextStyle resultNumber = TextStyle(color: HexColor("fbfbfb"), fontWeight: FontWeight.bold,fontSize: 80.0,letterSpacing: 0.1);


