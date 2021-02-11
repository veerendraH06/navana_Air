import 'package:flight_booking/Comman_widget/colors.dart';
import 'package:flutter/material.dart';

class RaisedButtons  extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  RaisedButtons({
    @required this.text,@required this.onPressed
  });
  @override
  Widget build(BuildContext context) {
    return Container(
     height: MediaQuery.of(context).size.height*0.07,
     width: MediaQuery.of(context).size.width*0.5,
      child: RaisedButton(shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(18.0),
      ),
      child: Text(text,style:TextStyle(fontSize: 22.0,color: Vcolors.TextColor)), // using constant colors for button 
      color: Vcolors.ButtonColor,
      onPressed: (){},
      ),

      
    );
  }
}