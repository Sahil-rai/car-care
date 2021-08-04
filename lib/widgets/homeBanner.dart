import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'images/car_poster.jpg',
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.only(top: 48.0),
          //   alignment: Alignment.center,
          //   child: Text(
          //     '" The cars we drive, say a lot about us! " \n - Alexandra Paul',
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontStyle: FontStyle.italic,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20.0),
          //     textAlign: TextAlign.right,
          //   ),
          // )
        ],
      ),
    );
  }
}
