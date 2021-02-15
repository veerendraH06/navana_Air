import 'package:flutter/material.dart';

import '../common/colors.dart';

class RaisedButtons extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  RaisedButtons({@required this.text, @required this.onPressed, String title});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.07,
      // width: MediaQuery.of(context).size.width * 0.5,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
        ),
        child: Text(text,
            style: TextStyle(
                fontSize: 22.0,
                color: Vcolors.TextColor)), // using constant colors for button
        color: Vcolors.ButtonColor,
        onPressed: () {},
      ),
    );
  }
}

class FlatCustomButton extends StatelessWidget {
  FlatCustomButton({@required this.onPressed, @required this.title});
  final String title;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Text(title,
          style: TextStyle(color: Vcolors.ButtonColor, fontSize: 15)),
    );
  }
}
