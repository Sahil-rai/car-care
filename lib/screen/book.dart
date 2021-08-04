import 'package:car_care/widgets/bookForm.dart';
import 'package:car_care/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  const Book({Key key}) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
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
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Image.asset(
              'images/service.jpg',
              alignment: Alignment.centerLeft,
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              width: 900,
              height: 500,
              child: BookForm(),
            ),
          ],
        ),
      ),
    );
  }
}
