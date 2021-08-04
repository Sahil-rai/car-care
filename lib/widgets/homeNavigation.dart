import 'package:car_care/screen/book.dart';
import 'package:car_care/screen/products_overview_screen.dart';
import 'package:car_care/widgets/contactUs.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var products = [];
    return Container(
      color: Colors.black,
      margin: const EdgeInsets.only(top: 50),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Book()));
              },
              child: Text(
                'Book Service',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
            child: Text(
              '|',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 300,
            child: TextButton(
              onPressed: () async {
                await Firestore.instance
                    .collection('products')
                    .getDocuments()
                    .then((value) => value.documents.forEach((element) {
                          products.add(element.data);
                        }));

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductsOverviewScreen(products)));
              },
              child: Text(
                'Browse Acessories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
            child: Text(
              '|',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            child: TextButton(
              onPressed: () {
                showDialog(context: context, builder: (context) => ContactUs());
              },
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
