import 'package:flutter/material.dart';
class PortraitMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
    fit: StackFit.expand,
    children: <Widget>[
      new Column(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ],
  );
  }
}


class LandScapeMode  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
    fit: StackFit.expand,
    children: <Widget>[
      new Column(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ],
  );
  }
}

 //  OrientationBuilder(
      // builder: (context, orientation){
      //  if(orientation == Orientation.portrait){
      // return PortraitMode();
      //    }else{
      // return LandScapeMode(); 
      //     }
      //    },
      //  ),

