import 'dart:math';

class Fun {
  Fun({
    required this.weight,required this.height
});
  final int weight;
  final int height;
  double _bmians=0;

  String bmire(){
    _bmians=weight/pow(height/100, 2);
    return _bmians.toStringAsFixed(1);
  }
  String bmistage(){
    if(_bmians>18.5 && _bmians <20.5)
      return 'NORMAL';
    else if(_bmians<18.5)
      return'UNDER WEIGHT';
    else
      return 'OVER WEIGHT';
  }
  String suggestion(){
    if(_bmians>18.5 && _bmians <20.5)
      return 'Wow nice work.You are in right track. Continue it. Have a nice day:)';
    else if(_bmians<18.5)
      return'You are adviced to have more food and water. Do not neglect your food. Thank you:)';
    else
      return 'You are adviced to have less food and water. Do not get more excited about your food. Thank you:)';
  }
}