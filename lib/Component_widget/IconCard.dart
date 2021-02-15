import 'package:flutter/material.dart';

class CircularCard extends StatelessWidget{
  final IconData icon;
  final String text,color;
  CircularCard({ this.icon, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: Card(
            child: Icon(icon,color: Colors.pinkAccent,),
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
        Text(text),
      ],
    );
  }

}