import 'package:flutter/material.dart';

class ConstantString 
{
  static const splScreenTxtNavana ="navana";
  static const splScreenTxtAir ="air";
  static const buttonforGetStarted ="Get Started";
  static const createAccount="Create \nan account";
  static const name="Name";
  static const email="Email";
  static const password="Password";
  static const signupButton="SIGN UP";
  static const alredyacc="Already have an account";
  static const signin="Sign in";
  static const skiptext="Skip for now ";


}


// import 'package:flight_booking_app/common/color.dart';
// import 'package:flight_booking_app/common/string.dart';
// import 'package:flight_booking_app/component/button.dart';
// import 'package:flutter/material.dart';

// // This is the signup page for the customers can register their details

// class Sign_up extends StatefulWidget{
// @override
// State<StatefulWidget> createState() {
// // TODO: implement createState
// return sign_screen();
// }
// }
// class sign_screen extends State<Sign_up>{
// @override
// Widget build(BuildContext context) {
// final height = MediaQuery.of(context).size.height;
// final width = MediaQuery.of(context).size.width;
// // TODO: implement build
// return Scaffold(
// body: ListView(
// children: [
// Container(
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(top:90),
// child: ListTile(
// title: Text(
// Strings.create,
// style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
// color: CustomColors.deepgreycolor//By using class name and object to show the color here.
// ),
// ),
// ) ,
// ),
// Container(
// padding: EdgeInsets.only(top: 20),
// child:Column(
// children: [
// ListTile(
// title: Text(Strings.name),
// subtitle: TextField(),
// ),
// ListTile(
// title: Text(Strings.email),
// subtitle: TextField(),
// trailing: Icon(Icons.email),
// ),
// ListTile(
// title: Text(Strings.password),
// subtitle: TextField(),
// trailing: Icon(Icons.remove_red_eye),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 35),
// child: Container(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// RaisedButtons(onPressed: (){},
// title:Strings.signup_buttton,//signup button
// ),
// ],
// ),
// ),
// ),
// Container(
// child: Text("Already have"),
// ),
// ],
// ),
// ),
// ],
// ),

// );
// }
// }