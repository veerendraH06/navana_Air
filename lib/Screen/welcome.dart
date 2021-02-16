import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_booking/Component_widget/buttons.dart';
import 'package:flight_booking/Screen/home_screen.dart';
import 'package:flight_booking/Screen/signup.dart';
import 'package:flight_booking/common/colors.dart';
import 'package:flight_booking/common/string.dart';
import 'package:flight_booking/Component_widget/swipeImages.dart';

import 'package:flutter/material.dart';

import 'login.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;

class Start_App extends StatefulWidget {
  // Start_Booking():super();
  @override
  _Start_AppState createState() => _Start_AppState();
}

class _Start_AppState extends State<Start_App> {
  CarouselSlider carouselSlider;
  int _current = 0;

  ///For loop for image
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     isLogin();
//   }

void isLogin() {
  var FirebaseApp;
  var FirebaseDatabase;

// if (!FirebaseApp.getApps(this).isEmpty())
// FirebaseDatabase.getInstance().setPersistenceEnabled(true);
    print("Calling from firebase "+_auth.currentUser().toString());
    if (FirebaseAuth.instance.currentUser() != null) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home_Screen()));
      print("Logged In");
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }


  // FirebaseAuth.instance.currentUser().then((firebaseUser) {
  //   try {
  //     if (firebaseUser != null)
  //     // if(FirebaseAuth.instance.currentUser() !=null)
  //     {
  //       print("login page");
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (BuildContext context) => LoginScreen()));
  //     }
  //     else {
  //       print("home Screen");
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (BuildContext context) => Home_Screen()));
  //     }
  //
  //   } catch (e) {
  //     print(e);
  //   }
    // if (firebaseUser == null) {
    //    Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //              builder: (BuildContext context) => LoginScreen()));
    //    } else {
    //     Navigator.pushReplacement(context,
    //        MaterialPageRoute(builder: (BuildContext context) => Home_Screen()));
    //    }
    // });

}


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    try {
      if (width > 600) {
        return Carosel(250);
      } else {
        return Carosel(500);
      }
    } catch (e) {}
  }

  Widget Carosel(double height) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// carouselSlider package usage
            carouselSlider = CarouselSlider(
              height: height,
              // height: MediaQuery.of(context).size.height * 0.5,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              // autoPlayAnimationDuration: Duration(seconds: 1),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.width * 6,
                      width: MediaQuery.of(context).size.width * 4,

                      // decoration: BoxDecoration(

                      //   color: Vcolors.vBlue,

                      // ),
                      // reciving images to using string
                      child: Image.network(
                        imgUrl,
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.6,
                        // fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),

            /// circule doted lines moving row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.020,
                  height: MediaQuery.of(context).size.height * 0.020,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _current == index ? Vcolors.vBlue : Vcolors.ButtonColor,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),

            /// Raised button for Get started
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButtons(
                  onPressed: ()
                  {
                    isLogin();
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  text: ConstantString.buttonforGetStarted,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
