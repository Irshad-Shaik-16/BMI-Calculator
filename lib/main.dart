import 'package:bmi_calci/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0c23),
        scaffoldBackgroundColor: Color(0xff080a1f),
      ),
      home: First(),
    ),
  );
}

