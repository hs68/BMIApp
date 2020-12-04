import 'dart:math';
class Calculator{
  Calculator({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;
  String calc()
  {
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getresult()
  {
    if(_bmi>25)
      return "OVERWEIGHT";
    else if(_bmi>18.5)
      return "NORMAL";
    else
      return "UNDERWEIGHT";
  }
  String getinerpret()
  {
    if(_bmi>25)
      return "You have more bmi";
    else if(_bmi>18.5)
      return "You are in good health";
    else
      return "You need to eat more";

  }
}