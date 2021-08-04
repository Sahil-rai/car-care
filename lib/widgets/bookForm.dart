import 'package:car_care/widgets/cancelDialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookForm extends StatefulWidget {
  const BookForm({Key key}) : super(key: key);

  @override
  _BookFormState createState() => _BookFormState();
}

class _BookFormState extends State<BookForm> {
  var _formKey = GlobalKey<FormState>();
  var vehicleNo = '';
  var email = '';
  var serviceType = '';
  var washing = '';
  var polish = '';
  var message;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.red,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Text(
                'Book Service',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20.0),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 4.0),
                    child: TextFormField(
                      key: ValueKey('vehicleNo'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 10) {
                          return 'Provide valid vehicle number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'Vehicle Number'),
                      onSaved: (value) => {vehicleNo = value},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 4.0),
                    child: TextFormField(
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Provide valid email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'Email'),
                      onSaved: (value) => {email = value},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'Service Type',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton(
                              color: serviceType == 'Regular'
                                  ? Colors.red
                                  : Colors.black,
                              child: Text('Regular'),
                              onPressed: () {
                                setState(() {
                                  serviceType = 'Regular';
                                });
                              }),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton(
                              color: serviceType == 'Premium'
                                  ? Colors.red
                                  : Colors.black,
                              child: Text('Premium'),
                              onPressed: () {
                                setState(() {
                                  serviceType = 'Premium';
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'Washing',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton(
                              color: washing == 'Manual'
                                  ? Colors.red
                                  : Colors.black,
                              child: Text('Manual'),
                              onPressed: () {
                                setState(() {
                                  washing = 'Manual';
                                });
                              }),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton(
                              color: washing == 'Automatic'
                                  ? Colors.red
                                  : Colors.black,
                              child: Text('Automatic'),
                              onPressed: () {
                                setState(() {
                                  washing = 'Automatic';
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'Polish',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton(
                              color: polish == 'Scratch Resistant'
                                  ? Colors.red
                                  : Colors.black,
                              child: Text('Scratch Resistant'),
                              onPressed: () {
                                setState(() {
                                  polish = 'Scratch Resistant';
                                });
                              }),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton(
                              color:
                                  polish == 'Gloss' ? Colors.red : Colors.black,
                              child: Text('Gloss'),
                              onPressed: () {
                                setState(() {
                                  polish = 'Gloss';
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: RaisedButton(
                              child: Text('Book'),
                              color: Colors.red,
                              onPressed: () async {
                                final isValid =
                                    _formKey.currentState.validate();
                                if (isValid) {
                                  _formKey.currentState.save();
                                 // print(vehicleNo);
                                  await Firestore.instance
                                      .collection('bookings')
                                      .document(vehicleNo)
                                      .setData({
                                    'vehicleNo': vehicleNo,
                                    'email': email,
                                    'serviceType': serviceType,
                                    'washing': washing,
                                    'polish': polish
                                  });
                                  setState(() {
                                    message =
                                        "You car will be serviced and delivered in 2 days";
                                  });
                                }
                              }),
                        ),
                        Container(
                          width: 200,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: RaisedButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CancelDialog();
                                    });
                              }),
                        ),
                      ],
                    ),
                  ),
                  if (message != null)
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red,
                      ),
                      child: Text(
                        message,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
