import 'package:flutter/material.dart';

Color? secondaryClr = Colors.black;
Color? primaryClr =  Colors.red[700];
Color? lightClr = Colors.white;
Color errorClr = Colors.red;




const edge20 = EdgeInsets.all(20);
const edge10 = EdgeInsets.all(10);
const edge5 = EdgeInsets.all(5);

LinearGradient topToBottomLiner = LinearGradient(
  colors: [secondaryClr!, secondaryClr!.withOpacity(0.6)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const radius10All = BorderRadius.all(Radius.circular(10));
const radius25All = BorderRadius.all(Radius.circular(25));
const radius25BottomRightLeft = BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25));
const radius25TopRightLeft = BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25));
