import 'package:flutter/material.dart';

int days = 20 ;
String name = "Codepur";
class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
      child: Container(
        child: Text("learn flutter in $days days with $name"),
      )
   
   ),
    drawer: Drawer(),
   );
  }
} 
