

import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            "Name of User",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black26,
                                fontSize: 22,
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'email'

                        ),
                      ),
                      TextField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'password'
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
    );
  }
}
