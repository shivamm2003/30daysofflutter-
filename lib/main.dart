import 'package:flutter/material.dart';
import 'Pages/Home_Page.dart';
import 'Pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';
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
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // this propertiy will adjust the colora of various components as color given .
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Here by giving brighting to dark we override all propwrties ,even if we give any color to dark theme it will not work .
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) =>  LoginPage() , 
        "/HomePage" : (context) => HomePage() ,
        "/LoginPage" : (context) => LoginPage() 

      } ,
   );
  }
}

