// import 'package:flight_booking/Component_widget/buttons.dart';
// import 'package:flight_booking/common/colors.dart';
// import 'package:flight_booking/common/string.dart';
// import 'package:flutter/material.dart';

// class SignUp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return SignUpState();
//   }
// }

// class SignUpState extends State<SignUp> {
//   var validKey = GlobalKey<FormState>();
//   var isLoaging = false;

//   void submit() {
//     final isValid = validKey.currentState.validate();
//     if (!isValid) {
//       return;
//     }
//     validKey.currentState.save();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(""),
//           backgroundColor: Colors.white,
//         ),
//         //body
//         body: Form(
//           key: validKey,
//                   child: ListView(
//             children: [
//               Center(
//                 child: Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[

//                       Text(
//                         ConstantString.createAccount,
//                         style:
//                             TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//                       ),
//                       //styling
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.025,
//                       ),
//                       Container(
//                         child: TextField(
//                           obscureText: false,
//                           decoration: InputDecoration(
//                               labelText: 'Name',
//                               labelStyle:
//                                   TextStyle(color: Colors.black, fontSize: 20.0)),
//                         ),
//                       ),

//                       Container(
//                         child: TextFormField(
//                           decoration: InputDecoration(labelText: 'email'),
//                           keyboardType: TextInputType.emailAddress,
//                           onFieldSubmitted: (value) {
                            
//                           },
//                           validator: (value) {
//                             if (value.isEmpty ||
//                                 !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                     .hasMatch(value)) {
//                               return 'Enter a valid email!';
//                             }
//                             return null;
//                           },
//                         ),
//                       ),

//                       //box styling
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.025,
//                       ),

//                       Container(
//                         child: TextFormField(
//                           decoration: InputDecoration(labelText: 'Password'),
//                           keyboardType: TextInputType.emailAddress,
//                           onFieldSubmitted: (value) {},
//                           obscureText: true,
                          
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'Enter a valid password!';
//                             }
//                             return null;
//                           },
//                         ),
//                       ),

//                       /// box styling
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.025,
//                       ),
//                       RaisedButtons(
//                         onPressed: (){if(validKey.currentState.validate())
//                         {
//                           print("successfull");
//                           return ;
//                         }
//                         else{
//                           print("un successfull");
//                         } },
//                         text: (ConstantString.signupButton),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.1,
//                       ),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(ConstantString.alredyacc),
//                           SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.04),
//                           Text(ConstantString.signin,
//                               style: TextStyle(color: Vcolors.ButtonColor)),
//                         ],
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.03,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [Text(ConstantString.skiptext)],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }

import 'package:flight_booking/Component_widget/buttons.dart';
import 'package:flight_booking/common/colors.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';



class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUp_State();
  }
}

class SignUp_State extends State<SignUp> {
  bool _passwordvisible;

  // final controller_name = TextEditingController();
  // final controller_email = TextEditingController();
  // final controller_password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordvisible = false;
  }

  // String validateEmail(String value) {
  //   Pattern pattern =
  //       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?)*$";
  //   RegExp regex = new RegExp(pattern);
  //   if (!regex.hasMatch(value) || value == null)
  //     return 'Enter a valid email address';
  //   else
  //     return null;
  // }
  void verifyemail() {
    setState(() {});
  }

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

  String validateEmail(String value) {
    Pattern pattern =
        r'^(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$';
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
  // void verify() {
  //   var check_email = controller_email.text;
  //   var check_password = controller_email.text;
  // }

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
                    validator: validateEmail,
                    //    controller: controller_email,
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
                    //   controller: controller_password,
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
                            if (_formKey.currentState.validate()) {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //       builder: (context) => HomeScreen()),
                              // );
                            }
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
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                
                              ),
                            ),
                            onPressed: verifyemail,
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

