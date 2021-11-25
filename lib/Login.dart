import 'dart:ui';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                              "Welcome Back",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                  fontSize: 22,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'email'

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'password'
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                          child: ButtonTheme(
                            padding: EdgeInsets.all(12),
                            buttonColor: Colors.green,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              onPressed: () {
                                setState(() {});
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
    );;
  }
}
