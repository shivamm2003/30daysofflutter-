

import 'package:flutter/material.dart';
import 'pages all here/Home_Page.dart';
void main() {
  runApp(MyApp());
  
}

// double pi = 3.14 ;
// num temp = 30.5; // num can take both int and double
// var day = "monday"; // var can take aNY data type 
// const pi = 3.14; // we have also final in which we can change the data , or add element to list.

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
   );
  }
}