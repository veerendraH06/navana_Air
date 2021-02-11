
import 'package:flight_booking/Component_widget/buttons.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Sign_upPage extends StatefulWidget {
  @override
  _Sign_upPageState createState() => _Sign_upPageState();
}

class _Sign_upPageState extends State<Sign_upPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width ,
        margin: EdgeInsets.only(top:80),
        child:
        ListView(children: [
          Text(
        ConstantString.createAccount,style: GoogleFonts.aBeeZee(
          fontSize:35,
          fontWeight:FontWeight.bold
        ),),
        Container(
          child: Column(children: [
           ListTile(
              title: Text(ConstantString.name),
            subtitle: TextField(),
           ),
           ListTile(
              title: Text(ConstantString.email),
            subtitle: TextField(),
           ),
           ListTile(
              title: Text(ConstantString.password),
            subtitle: TextField(),
           )
          ],
            

          ),
        
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [RaisedButtons(onPressed: (){},
          text: ConstantString.signupButton,)],
        )
      
        ],),
        
        
    
      ),
    
      );

       
  }
}