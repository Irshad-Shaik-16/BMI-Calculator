import 'bottombutton.dart';
import 'package:flutter/material.dart';
import 'box_content.dart';


class Reuslt extends StatelessWidget {

  Reuslt({required this.bmi,required this.status,required this.sug});
  final String status;
  final String bmi;
  final String sug;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
                child: Text(
                  'YOUR RESULT',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),),
              ),
          ),
          Expanded(
            flex: 5,
            child: Boxcontent(colour: Color(0xff1d1e33),
            childbox: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(status,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff30d07b),
                ),
                ),
                Text(bmi,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text(sug,
                  textAlign: TextAlign.center,
                  ),
              ],
            ),
            ),
          ),
          Bottombutton(fun: (){
            Navigator.pop(context);
          }, title: 'RECALCULATE')
        ],
      ),
    );
  }
}
