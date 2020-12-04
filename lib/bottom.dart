import 'package:flutter/material.dart';
import 'input.dart';
class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.ontap,@required this.s});
  final Function ontap;
  final String s;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child:Center(child: Text(s,
          style: TextStyle(
            color:Colors.white,
            fontWeight: FontWeight.bold,
          ),)),
        color:Colors.pink,
        margin:EdgeInsets.only(top:10.0),
        padding:EdgeInsets.only(bottom: 10.0),
        width:double.infinity,
        height:30.0,
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  @override
  RoundButton({@required this.child,@required this.onpressed});
  final Widget child;
  final Function onpressed;
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed:onpressed,
      child: child,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 58.0,
      ),
      shape:CircleBorder(),
      fillColor: inactive,
    );
  }
}
