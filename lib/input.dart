import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Resuable.dart';
import 'icon.dart';
import 'result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom.dart';
import 'calculator.dart';
const activecolor=Color(0xFF1D1E33);
const inactive=Color(0xFF111328);
const bottom=Colors.pink;
int height=180;
int weight=50;
int age=18;
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
Color male=inactive;
Color female=inactive;
Gender selected;
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Expanded(child: Row(
              children: [
                Expanded(


                    child: ResuableCard(colour: selected==Gender.male?activecolor:inactive,
                    cardChild: ResuableIcon(
                      icon:Icon(
                        FontAwesomeIcons.mars,
                        size:80.0,
                      ),
                      s:'MALE',
                    ),
                      ontap: ()
        {
        setState(() {
        selected=Gender.male;
        },);
        },
                    ),

                ),
                Expanded(

                    child: ResuableCard(colour: selected==Gender.female?activecolor:inactive,
                    cardChild: ResuableIcon(
                      icon:Icon(
                        FontAwesomeIcons.venus,
                        size:80.0,

                      ),
                      s:'FEMALE',
                    ),
                      ontap: ()
                      {
                        setState(() {
                          selected=Gender.female;
                        },);
                      },
                    ),
                  ),


              ],
            ),
            ),
          Expanded(
            child:ResuableCard(colour: Color(0xFF1D1E33),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               // margin:EdgeInsets.only(top:10.0),

                Text(
                  'HEIGHT',
                  style:labeltextstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style:number,
                    ),
                    Text(
                      'cm',
                      style:labeltextstyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data:SliderTheme.of(context).copyWith(
                    inactiveTickMarkColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.pink,
                    overlayColor: Colors.pinkAccent,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),

                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min:120,
                    max:220,


                    onChanged: (double newvalue)
                    {
                        setState(() {
                          height=newvalue.round();
                        });
                    },
                  ),
                ),

              ],
            ),),

          ),
          Expanded(child:Row(
            children: [
              Expanded(
                child: ResuableCard(colour: Color(0xFF1D1E33),
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style:labeltextstyle,
                    ),
                    Text(
                      weight.toString(),
                      style: number,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButton(
                          child:Icon(
                            FontAwesomeIcons.minus,
                            color:Colors.white,
                        ),
                          onpressed: ()
                          {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        SizedBox(
                          width:10.0,
                        ),
                        RoundButton(
                          child: Icon(
                            FontAwesomeIcons.plus,

                          ),
                          onpressed:()
                          {
                            setState(() {
                              weight++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                )
                  ,),
              ),
              Expanded(
                child: ResuableCard(colour: Color(0xFF1D1E33),
                cardChild: Column(
                  children: [
                    Text(
                      'AGE',
                      style: labeltextstyle,
                    ),
                    Text(
                      age.toString(),
                      style: number,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButton(child: Icon(FontAwesomeIcons.minus),
                            onpressed:()
                        {
                          setState(() {
                            age--;
                          });
                        },),
                        RoundButton(child: Icon(FontAwesomeIcons.plus), onpressed:()
                        {
                          setState(() {
                            age+=1;
                          });
                        })
                      ],
                    )
                  ],
                ),),

              ),
            ],
          ),
          ),

          Bottombutton(s:'CALCULATE',ontap:(){
            Calculator calc=Calculator(height:height,weight: weight);
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Result(
              bmiresult: calc.calc(),
              text: calc.getresult(),
              inter: calc.getinerpret(),
            )));
          },
          ),
        ],
      ),


    );
  }
}

