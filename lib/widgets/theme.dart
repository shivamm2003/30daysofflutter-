// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData /*get */ lighttheme(BuildContext context) => ThemeData( // here get is used to get Theme data code 
        primarySwatch: Colors
            .deepPurple, // this propertiy will adjust the color of various components as color given .
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // %%%%%%%&&&&&$* not working to change title text theme *********&&&&&^^^^%$#@@@@@@@@@@
          //  toolbarTextStyle: Theme.of(context).textTheme, TO WORK THE CONTEXT , WE Have to create a function with parametar (buildcontext context)
        ),
      );
       static ThemeData /*get */ darktheme(BuildContext context) => ThemeData( // here get is used to get Theme data code 
        brightness: Brightness.dark,
      );
}
