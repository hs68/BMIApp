import 'package:flutter/material.dart';
class ResuableCard extends StatelessWidget {
  @override
  ResuableCard({@required this.colour,this.cardChild,this.ontap});
  final Color colour;
  final Widget cardChild;
  final Function ontap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child:cardChild,
        decoration: BoxDecoration(
          color:colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin:EdgeInsets.all(15.0),
      ),
    );
  }
}
