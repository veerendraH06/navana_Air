
import 'package:flight_booking/Component_widget/IconCard.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Home_state();
  }
}

class Home_state extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Appbarwidget.getAppBar(Strings.home_appbar_text),
      body: ListView(
        children: [
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircularCard(icon: Icons.flight_outlined,text: ConstantString.flight,),
                CircularCard(icon: Icons.home_work_sharp,text: ConstantString.hotel,),
                CircularCard(icon: Icons.car_rental,text: ConstantString.car,),
                CircularCard(icon: Icons.restaurant_menu,text: ConstantString.resturant,),
                CircularCard(icon: Icons.train,text: ConstantString.train,),
              ],
            ),
            height: 130,
            // color: Colors.indigo,
            margin: const EdgeInsets.only(top: 15),
          ),
        ],
      ),
    );
  }
}