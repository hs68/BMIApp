import 'package:flutter/material.dart';
const labeltextstyle=TextStyle(
  fontSize: 18.0,
  color:Color(0xFF8D8E98),
);
const number=TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const lop=TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  color:Colors.white,
);
class ResuableIcon extends StatelessWidget {
  @override
  ResuableIcon({this.icon,this.s});
  final Widget icon;
  final String s;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height:10.0,
        ),
        Text(
          s,
          style:labeltextstyle,
        ),

      ],
    );
  }
}

