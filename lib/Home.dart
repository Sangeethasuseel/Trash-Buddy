import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:trashbuddy/Profile.dart';
import 'package:trashbuddy/products.dart';
import 'package:trashbuddy/rewards.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          padding: EdgeInsets.only(left: 5),
          icon: Icon(Icons.card_giftcard),
          iconSize: 40,
          color: Colors.black54,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Rewards(),
                ));
          },
        ),

        title: Text(
          'Trash Buddy',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black54,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Profile(),
                  ));
            },
          )
        ],
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
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                              child: DateTimePicker(
                                type: DateTimePickerType.dateTimeSeparate,
                                dateMask: 'd MMM, yyyy',
                                initialValue: DateTime.now().toString(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                                icon: Icon(Icons.event),
                                dateLabelText: 'Date',
                                timeLabelText: "Time",
                                selectableDayPredicate: (date) {
                                  // Disable weekend days to select from the calendar
                                  if (date.weekday == 6 || date.weekday == 7) {
                                    return false;
                                  }

                                  return true;
                                },
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) => print(val),
                              ),
                            ),
                            Container(
                              width: 300,
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                                    'DISPOSE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(
                            "Latest Products",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black26,
                                fontSize: 22,
                                letterSpacing: 2),
                          ),
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
                                    builder: (BuildContext context) => Products(),
                                  ));
                            },
                            child: Text(
                              'Products',
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
    );
  }
}
