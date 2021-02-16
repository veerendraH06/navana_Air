import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_booking/Component_widget/buttons.dart';
import 'package:flight_booking/common/colors.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flight_booking/services/login_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordvisible;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordvisible = false;
  }

  /// method to validate the password
  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid password';
      else
        return null;
    }
  }

  /// method to validate the email
  String validateEmail(String value) {
    Pattern pattern = r'^(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);

    if (value.isEmpty) {
      return 'Please enter Email';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid Email';
      else
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appBar: Appbarwidget.getAppBar("login"),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Create account Text
                Container(
                  child: Text(
                    ConstantString.loginText,
                    style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Vcolors.deepgrey),
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.1,
                  margin: const EdgeInsets.only(top: 60, right: 100),
                ),

                /// Text Email
                Container(
                  child: ListTile(
                    title: Text(
                      ConstantString.email,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 14),
                ),

                /// Email validation TextField
                Container(
                  child: TextFormField(
                    validator: validateEmail,
// controller: controller_email,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      hintText: ConstantString.email,
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                ),

                /// option to hide and make visible the password using TextFormField

                Container(
                  child: TextFormField(
                    validator: validatePassword,
// controller: controller_password,
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordvisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
// Here is key idea
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordvisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black54,
                        ),
                        onPressed: () {
// Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordvisible = !_passwordvisible;
                          });
                        },
                      ),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ConstantString.forgetpass,
                      style: TextStyle(color: Vcolors.deepgrey),
                    ),
                  ],
                ),

                /// custom Sign up Button coming from Button.dart
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        height: 60,
                        width: 300,
                        child: RaisedButtons(
                          onPressed: () {
                            // FirebaseAuth.instance.currentUser().then((firebaseUser) {
                            //   if (firebaseUser == null) {
                            //
                            //     Navigator.pushReplacement(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (BuildContext context) => LoginScreen()));
                            //   } else {
                            //     Navigator.pushReplacement(context,
                            //         MaterialPageRoute(builder: (BuildContext context) => Home_Screen()));
                            //   }
                            // });
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_Screen()));
                             if (_formKey.currentState.validate()) {
                            //   // Navigator.of(context).push(
                            //   //   MaterialPageRoute(
                            //   //       builder: (context) => HomeScreen()),
                            //   // );
                            }
                          },
                          text: (ConstantString.loginText),
                        )),
                  ),
                ),

                /// Text sign in to navigate to next Screen
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ConstantString.loginWith,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 25),
                            child: FloatingActionButton(
                              heroTag: "FbButton",
                              onPressed: () {},
                              child: Image.network(ConstantString.fbImage),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 25),
                            child: FloatingActionButton(
                              heroTag: "Googlebutton",
                              onPressed: () {
                                signInWithGoogle().whenComplete(() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) {
                                      return Home_Screen();
                                    }),
                                  );
                                });
                              },
                              child: Image.network(ConstantString.googleImage),
                              backgroundColor: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ConstantString.donthaveacc,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FlatButton(
                              child: Text(
                                ConstantString.signupButton,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Vcolors.ButtonColor,
                                ),
                              ),
                              onPressed: () {
                                // Navigator.of(context).push(
                                // MaterialPageRoute(
                                //     builder: (context) => LoginScreen()),
                                // );
                              },
                            ),
// margin: const EdgeInsets.only(top: 10),
                          ]),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 80),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
