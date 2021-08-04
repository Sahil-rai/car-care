import 'package:car_care/widgets/myDrawer.dart';
import 'package:car_care/widgets/productGrid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductsOverviewScreen extends StatefulWidget {
  final products;
  ProductsOverviewScreen(this.products);

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Car Care',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white),
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.black,
          child: ProductGrid(widget.products)),
    );
  }
}
