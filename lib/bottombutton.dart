

import 'package:flutter/material.dart';

class Bottombutton extends StatelessWidget {

  Bottombutton({required this.fun,required this.title});
  final Function fun;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        fun();
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 5),
        color: Color(0xffeb1555),
        child: Text(title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        width: double.infinity,
        height: 50,
      ),
    );
  }
}

