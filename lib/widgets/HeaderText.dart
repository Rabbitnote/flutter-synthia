import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String placeHolder;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;

  const HeaderText(
      {super.key,
      required this.placeHolder,
      required this.fontWeight,
      required this.color,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(placeHolder,
        style: TextStyle(
            color: color, fontWeight: fontWeight, fontSize: fontSize));
  }
}
