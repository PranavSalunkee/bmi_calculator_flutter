import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBmi(){
    _bmi = weight/ pow(height/100, 2) ;
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
       if(_bmi >25) return 'OVERWEIGHT';
       else if(_bmi>18) return 'NORMAL';
       else return 'UNDERWEIGHT';

  }

  String getInterprtention(){
    if(_bmi >25) return 'Y. Try to exercise more.';
    else if(_bmi>18) return 'You have Normal body weight. keep going!';
    else return 'You have lower than normal body weight. You can eat a bit more.';
  }
  
}