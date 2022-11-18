import 'package:flutter/material.dart';
import  'package:flutter_catalog/widgets/drawer.dart';
int days = 20;
String name = "Codepur";

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // constructor
        title: Text("Catalog App", style:TextStyle(color:Colors.black,)),
      ),
      body: Center( // constructor
        child: Container(
          child: Text("learn flutter in $days days with $name"),
        ),
      ),
      
      drawer: MyDrawer(),// here we have to give the class name with which we have defined a drawer in drawer.dart file in order to call a constructor .
    );
  }
}
