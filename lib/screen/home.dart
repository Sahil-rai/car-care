import 'package:car_care/widgets/homeBanner.dart';
import 'package:car_care/widgets/homeNavigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            HomeBanner(),
            HomeNavigation(),
          ],
      ),
    );
  }
}
