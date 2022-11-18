import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const Mydrawer({super.key, required ListView child});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://www.google.com/search?sxsrf=ALiCzsZ5wAiv4kROHa8K1jWbYlEbNHkAcA:1668781215028&q=user+image+icon&tbm=isch&chips=q:user+image+icon,g_1:circle:aDYotbvpOA0%3D&usg=AI4_-kSqFP9hBRKZ8DwYxsxFeRoOkHWO9w&sa=X&ved=2ahUKEwjv8J289rf7AhX1wzgGHfQfCOMQgIoDKAJ6BAgIEBg&biw=750&bih=712&dpr=1.25#imgrc=z3fL0hiievBn9M";
    return Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
              padding: EdgeInsets
            .zero, // listview , container , coloumn are all class defined in dart , we sre using just constructor of that class .
              children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  // color: Colors.red
                ),
            margin: EdgeInsets.zero, // Edgeinsets is a class .
            accountName: Text("shivam"),
            accountEmail: Text("sp249296@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage:NetworkImage(imageUrl) ,)
          ) // DrawerHeader always takes the widjet UserAccountsDrawerHeader
        
              ),
              ListTile(
                leading:Icon(CupertinoIcons.home , color:Colors.white,) ,
                title: Text("Home", textScaleFactor:1.2 , style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading:Icon(CupertinoIcons.profile_circled , color:Colors.white,) ,
                title: Text("Profile", textScaleFactor:1.2 , style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading:Icon(CupertinoIcons.mail , color:Colors.white,) ,
                title: Text("Email me", textScaleFactor:1.2 , style: TextStyle(color: Colors.white)),
              )
              ],
            ),
        ));
  }
}
