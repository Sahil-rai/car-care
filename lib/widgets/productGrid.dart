import 'package:car_care/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final products;
  ProductGrid(this.products);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) => ProductItem(products[index]),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2/1.67,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
