import 'package:flight_booking/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CircularCard extends StatelessWidget{
  final IconData icon;
  final String text,colors;
  CircularCard({ this.icon, this.text, this.colors});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Container(

            child: Card(
              color: HexColor(colors),
              child: Icon(icon,color: Colors.white,),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),

            ),
            width: 80,
            height: 80,
            //  color: Colors.amberAccent,
            margin: const EdgeInsets.all(10),
          ),
          Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        ],
      ),
    );
  }

}