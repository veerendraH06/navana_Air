

import 'package:flutter/material.dart';

class ConstantString {
  static const splScreenTxtNavana = "navana";
  static const splScreenTxtAir = "air";
  static const buttonforGetStarted = "Get Started";
  static const createAccount = "Create \nan account";
  static const name = "Name";
  static const email = "Email";
  static const password = "Password";
  static const signupButton = "SIGN UP";
  static const alredyacc = "Already have an account ?";
  static const signin = "Sign in";
  static const skiptext = "Skip for now ";
  static const loginText = "Log In";
  static const forgetpass = "Forget Password?";
  static const loginWith = "Log In With";
  static const donthaveacc = "Don't have an account?";
  static const String fbImage =
      'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512';
  static const String googleImage =
      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png";
  static const home = "Home";
  static const Bestoff = "Best Offers";
  static const recoDestination = "Recommended Destination";
  static const Viewall = "View All";
  static const popularPlc = "Popular Places";
  static const flight="Flight";
  static const hotel="hotel";
  static const car="car";
  static const resturant="resturant";
  static const train="train";
}

/// validation function for name
String validateName(String value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(pattern);
  try {
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  } catch (e) {
    throw (e);
  }
}

/// validation  function for  password
String validatePassword(String value) {
  Pattern pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = new RegExp(pattern);
  print(value);
  try {
    if (value.isEmpty) {
      return 'Please enter password';
    } else if (!regex.hasMatch(value)) {
      return 'Enter valid password';
    }
    return null;
  } catch (e) {
    throw (e);
  }
}

///validation function for email
String validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  try {
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  } catch (e) {
    throw (e);
  }
}
