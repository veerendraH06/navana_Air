import 'package:flutter/material.dart';

import 'Screen/home_screen.dart';
import 'Screen/login.dart';
import 'Screen/signup.dart';
import 'Screen/splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/', /// Route of the page
      // routes: {
      //   '/':(context)=>Splash_Screen(), ///load Splash Screen

      //   '/Sign_up':(context)=>Sign_upPage(),
      // },

      // title: 'Flutter Demo',
      // theme: ThemeData(

      //   primarySwatch: Colors.blue,

      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: Splash_Screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
