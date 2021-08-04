import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 10,
      backgroundColor: Colors.transparent,
      child: Container(
        height: 280,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              alignment: Alignment.center,
              child: Text(
                'Car Care',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.red),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                title: Text(
                  'Email : support@carcare.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                title: Text(
                  'Phone : +919111111111',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.red,
                ),
                title: Text(
                  'Address : Car care, India',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
