import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

// bool changebutton = false;
// String name = "";
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton = false;
  String name = "";
  final _formKey = GlobalKey<
      FormState>(); // declaration of form key ,for initialisation of form .
  // htis is done to avoid clicking of login button without proper entery in username and password.
  moveToHome(BuildContext context) async {
    // await means to wait for 1 sec then go to home page.
    if (_formKey.currentState!.validate()) {
      // The method 'validate' can't be unconditionally invoked because the receiver can be 'null'.
      // Try making the call conditional (using '?.') or adding a null check to the target ('!').
      setState(() {
        changebutton = true; // 65424
      });
      // when we have to make any dynamic changes in our page , we must call setState so it will call BUILD function which carries the futher reload of the page .
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, "/Homepage");

      setState(() {
        changebutton = false; // 546878
      });
    }
  }
  
  // here we not have to make object of navigator ,as push is static }

  @override
  Widget build(BuildContext context) {
    // String name = ""; this is wrong we need to declare the string vaeriable in global scope
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,               // OVERFLOW ISSUE OF IMAGES.
              child: Column(children: [  // There is a very common pixel overflow error in Flutter whenever there are too many widgets in a Column and they are not able to display completely when Keyboard is opened, then these kinds of Pixel Overflow errors are received.
                Image.asset(
                  "assets/images/hey_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                  width: 32.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 32.0,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            // ************
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          // we can make changes in page by this by assigning value to already declared variable in globle domain.
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password should be atleast 6 ";
                          }
                          return null;
                        },
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      // to make any widget clickable ,we have to wrap it with gesture detactor or intwell
                      // difference
                      //between gesture and intwell is , gesture does not give any feedback (not UI ripple effect) but intwell gives respond by flash color .

                      Material(
                        // all property of decoration should be in material not in any child class .
                        color: Colors.deepPurple,
                        borderRadius: changebutton
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(8),
                        child: InkWell(
                          // ancestor of inkwell shouid be Material . inside ancesotor child should not have any decoration function.
                          splashColor: Colors.white,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      ),
                    ]))
              ])

              //                                                                       MyRoutes

              ), //   ############$#@@^^^&$                                                                     //               .homeRoute); // here we not have to make object of navigator ,as push is static .
        ));
  }
}
