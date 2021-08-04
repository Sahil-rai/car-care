import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final item;
  ProductItem(this.item);

  @override
  Widget build(BuildContext context) {
    print(item);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  item['image'],
                  width: double.infinity,
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  child: Text(
                    'Type : ${item['type']}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  child: Text(
                    'Brand : ${item['brand']}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4.0),
                  child: Text(
                    'Price : ${item['price']}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
