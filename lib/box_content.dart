import 'package:flutter/material.dart';

class Boxcontent extends StatelessWidget {

  Boxcontent({required this.childbox,required this.colour});
  final Widget childbox;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childbox,
      margin: EdgeInsets.all(15.0),
      color: colour,
    );
  }
}

