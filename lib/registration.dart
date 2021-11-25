
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:trashbuddy/Home.dart';
import 'package:trashbuddy/Login.dart';
class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,


          title: Text(
            'Trash Buddy',
            textAlign: TextAlign.center,
          ),

          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              "Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                  fontSize: 24,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                        TextFormField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Name'

        ),
      ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Address'
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'House No'
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Email'
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'password'
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Confirm password'
                          ),
                        ),
                        Container(
                          width: 350,
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ButtonTheme(
                            padding: EdgeInsets.all(12),
                            buttonColor: Colors.green,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Home(),
                                    ));
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 350,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: ButtonTheme(
                            padding: EdgeInsets.all(12),
                            buttonColor: Colors.green,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Login(),
                                    ));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
