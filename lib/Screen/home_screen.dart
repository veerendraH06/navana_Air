import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_booking/Component_widget/IconCard.dart';
import 'package:flight_booking/Screen/screen/botom_navigator.dart';
import 'package:flight_booking/Screen/welcome.dart';
import 'package:flight_booking/common/colors.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flight_booking/services/login_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Home_state();
  }
}

class Home_state extends State<Home_Screen> {

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    print("signout successfully");
  }
  // void signOut(){
  //   FirebaseAuth.instance.signOut();
  //   Future<FirebaseUser> Function() user = FirebaseAuth.instance.currentUser;
  // }
  @override
  void dispose() {
// _signOut().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RaisedButton(onPressed: (){
            _signOut();
            // signOutGoogle();
            // _googleSignIn.disconnect();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start_App() ));

          },child: Text("Signout"),),
          ListTile(
            title: Text(
              ConstantString.home,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircularCard(
                  icon: Icons.flight_outlined,
                  text: ConstantString.flight,
                  colors: '#DF3E53',
                ),
                CircularCard(
                  icon: Icons.hotel_outlined,
                  text: ConstantString.hotel,
                  colors: '#55C908',
                ),
                CircularCard(
                  icon: Icons.local_car_wash,
                  text: ConstantString.car,
                  colors: '#5B56C7',
                ),
                CircularCard(
                  icon: Icons.restaurant_menu,
                  text: ConstantString.resturant,
                  colors: '#D30ECC',
                ),
                CircularCard(
                  icon: Icons.train,
                  text: ConstantString.train,
                  colors: '#09EFD2',
                ),
              ],
            ),
            height: 130,
            // color: Colors.indigo,
            margin: const EdgeInsets.only(top: 15),
          ),
          // Row(children: [
          //   Text("Best Offers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          // ],),
          ListTile(
            title: Text(
              "Best offers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Text(
              "Recommended Destination",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            trailing: Text(
              'ViewAll',
              style: TextStyle(color: Vcolors.ButtonColor,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height *0.30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      height: 155,
                      width: 265,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://media-cdn.tripadvisor.com/media/photo-s/02/27/92/22/lady-liberty-facing-the.jpg"))),
                      child: Container(
                          padding: EdgeInsets.only(left: 20,top: 120),
                          child: Text(ConstantString.price1,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        'Thailand',
                        style: GoogleFonts.montserrat(
                          // color: Vcolors.vBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text('Bangkok',
                          style: GoogleFonts.montserrat(
                              color: Vcolors.deepgrey, fontSize: 17)),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 155,
                      width: 265,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1431274172761-fca41d930114?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"))),
                      child: Container(
                          padding: EdgeInsets.only(left: 20,top: 120),
                          child: Text(ConstantString.price2,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        'Paris',
                        style: GoogleFonts.montserrat(
                          // color: Vcolors.vBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text('France',
                          style: GoogleFonts.montserrat(
                              color: Vcolors.deepgrey, fontSize: 17)),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 155,
                      width: 265,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://www.ytravelblog.com/wp-content/uploads/2018/01/Sightseeing-New-York-City-Sightseeing-pass.jpg"))),
                      child: Container(
                          padding: EdgeInsets.only(left: 20,top: 120),
                          child: Text(ConstantString.price3,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        'New York',
                        style: GoogleFonts.montserrat(
                          // color: Vcolors.vBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text('US',
                          style: GoogleFonts.montserrat(
                              color: Vcolors.deepgrey, fontSize: 17)),
                    ),
                  ],
                ),
              ],

            ),
          ),
          SizedBox(height: 6,),
          ListTile(title: Text("Popular Places",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          trailing:  Text("View All",style: TextStyle(color: Vcolors.ButtonColor,fontWeight: FontWeight.bold),),),
          SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.only(left: 20),
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            height: MediaQuery.of(context).size.height *0.2,
            width: MediaQuery.of(context).size.width ,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(

                      height: 140,
                      width: 350,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://media-cdn.tripadvisor.com/media/photo-s/02/27/92/22/lady-liberty-facing-the.jpg"),
                          ),
                      ),

                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(

                      height: 140,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  " "))),
                    ),

                  ],
                ),

              ],
            ),
          ),


        ],
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }

}