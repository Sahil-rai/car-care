import 'package:car_care/screen/home.dart';
import 'package:car_care/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Car Care',
        theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: Colors.black,
          accentColor: Colors.blueAccent,
          accentColorBrightness: Brightness.dark,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.black,
            padding: EdgeInsets.all(15),
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Car Care',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white),
            ),
          ),
          drawer: MyDrawer(),
          body: Home(),
        ));
  }
}
