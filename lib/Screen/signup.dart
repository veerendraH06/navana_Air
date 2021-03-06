import 'package:flight_booking/Component_widget/buttons.dart';
import 'package:flight_booking/common/colors.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>SignUp_State();
  
}

// ignore: camel_case_types
class SignUp_State extends State<SignUp> {
  bool _passwordvisible;
  // bool _autoValidate = false;

  final _formKey = GlobalKey<FormState>();
  String email;

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    _passwordvisible = false;
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Appbarwidget.getAppBar("login"),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            // autovalidate: _autoValidate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Create account Text
                Container(
                  child: Text(
                    ConstantString.createAccount,
                    style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Vcolors.deepgrey),
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.19,
                  margin: const EdgeInsets.only(top: 30, right: 100),
                  // color: Colors.yellow,
                ),

                /// Text Name
                Container(
                  child: ListTile(
                    title: Text(
                      ConstantString.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 14),
                  // color: Colors.blueAccent,
                ),

                /// TextField for Name
                Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      hintText: "Name",
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  //color: Colors.deepOrangeAccent,
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
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please a Enter';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please a valid Email';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      email = value;
                    },
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

                /// custom Sign up Button coming from Button.dart
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        height: 60,
                        width: 300,
                        child: RaisedButtons(
                          onPressed: () {
                            print("successful");
                            if (_formKey.currentState.validate()) {
                              print("successful");
                              return;
                            } else {
                              print("unsuccessfull");
                            }
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //       builder: (context) =>),
                            // );
                          },
                          text: (ConstantString.signupButton),
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
                            ConstantString.alredyacc,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              ConstantString.signin,
                              style: TextStyle(
                                color: Vcolors.ButtonColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // onPressed: verifyemail,
                            //     () {
                            //   Navigator.of(context).push(
                            //     MaterialPageRoute(
                            //         builder: (context) => LoginScreen()),
                            //   );
                            // },
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          ConstantString.skiptext,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        //    margin: const EdgeInsets.only(top: 10),
                      ),
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
