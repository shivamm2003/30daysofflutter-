import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
  
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
      child: Center(
      child: Container(
        child: Text("learn flutter in 20 days"),
      )
   
   ),
   ),
   );
  }
}