import 'dart:async';


import 'package:flight_booking/common/colors.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flight_booking/Screen/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  //init state to navigate to next Start_app page
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Start_App())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.Hexacolor
      body: Container(
          color: Colors.indigo[900],
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/splashlogo.png",width: 100,height: 100,),  ///image for nanavaair logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// this two text field for "navana" and "air"
                  Text(
                    ConstantString.splScreenTxtNavana,
                    style: GoogleFonts.aBeeZee(
                        color: Vcolors.TextColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    ConstantString.splScreenTxtAir,
                    style: GoogleFonts.aBeeZee(
                        color: Vcolors.ButtonColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
