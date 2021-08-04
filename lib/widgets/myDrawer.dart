import 'package:car_care/screen/home.dart';
import 'package:car_care/widgets/contactUs.dart';
import 'package:car_care/widgets/cancelDialog.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            height: 100,
            child: Text(
              'Car Care',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.white,
              ),
            ),
          )),
          ListTile(
            leading: Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 30,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.book_online_rounded,
              color: Colors.black,
              size: 30,
            ),
            title: const Text(
              'Book Service',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            title: const Text(
              'Browse Acessories',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_page,
              color: Colors.black,
              size: 30,
            ),
            title: const Text(
              'Contact Us',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            onTap: () {
              showDialog(context: context, builder: (context) => ContactUs());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.black,
              size: 30,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.0),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CancelDialog();
                  });
            },
          ),
        ],
      ),
    );
  }
}
