import 'package:bmi_calculator/input.dart';
import 'package:flutter/material.dart';
import 'Resuable.dart';
import 'bottom.dart';
import 'icon.dart';
class Result extends StatelessWidget {
  Result({@required this.bmiresult,@required this.text,@required this.inter});
  final String bmiresult;
  final String text;
  final String inter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('BMI CALCULATOR'),

       ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child:Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style:lop,
              ),
            ),
          ),
          Expanded(
            flex:5,
            child:ResuableCard(
              colour:activecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    text,
                    style: lop,
                  ),
                  Text(
                    bmiresult,
                    style:TextStyle(
                      fontSize: 100.0,
                    ),
                  ),
                  Text(

                    inter,
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Bottombutton(ontap:()
              {
                Navigator.pop(context);
              }, s: 'RECALCULATE'),
        ],

      ),
    );
  }
}
