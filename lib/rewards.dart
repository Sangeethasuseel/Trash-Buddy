import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          padding: EdgeInsets.only(left: 5),
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          color: Colors.black54,
          onPressed: () {},
        ),
        title: Text(
          'Rewards',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 2/ 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          itemCount: 10,
          itemBuilder: (context, i) {
            return Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                margin: EdgeInsets.fromLTRB(2, 10, 0, 2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: NetworkImage("https://res.cloudinary.com/swiggy/image/upload/c_scale,w_715/v1513594444/swiggy_host_ytmrnn"),
                        fit: BoxFit.fill),
                ),
              ),
            );
          }),
      // body: ListView.builder(
      //     itemCount: 15,
      //     shrinkWrap: true,
      //     itemBuilder: (BuildContext content, int index) {
      //
      //       return Container(
      //         height: 120,
      //         child: Row(
      //           children: [
      //             Container(
      //               width: 90,
      //               height: 300,
      //               margin: EdgeInsets.fromLTRB(15, 10, 15, 25),
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.rectangle,
      //                 image: DecorationImage(
      //                     image: NetworkImage("https://5.imimg.com/data5/MB/VJ/MY-40824460/recycled-waste-paper-basket-500x500.jpg"),
      //                     fit: BoxFit.fill),
      //               ),
      //             ),
      //             Container(
      //               // margin: EdgeInsets.only(bottom: ),
      //                 width: 160,
      //                 child: Text.rich(TextSpan(
      //                   children: <InlineSpan>[
      //                     TextSpan(
      //                         text: "Recycled Paper Basket" + '\n',
      //                         style: TextStyle(
      //                             color: Colors.black87,
      //                             fontSize: 16,
      //                             fontWeight: FontWeight.w700)),
      //                     WidgetSpan(
      //                         child: SizedBox(
      //                           height: 22,
      //                         )),
      //                     TextSpan(
      //                         text: '100 Rs\n',
      //                         style: TextStyle(
      //                             color: Colors.black54,
      //                             fontSize: 14,
      //                             fontWeight: FontWeight.w500)),
      //                   ],
      //                 ))),
      //             Flexible(
      //               fit: FlexFit.loose,
      //               child: Container(
      //                 width: 100,
      //                 padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      //                 child: ButtonTheme(
      //                   padding: EdgeInsets.all(12),
      //                   buttonColor: Colors.black26,
      //                   child: RaisedButton(
      //                     shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(15)),
      //                     onPressed: () {
      //                       setState(() {});
      //                     },
      //                     child: Text(
      //                       'Buy',
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 12,
      //                           fontWeight: FontWeight.w500),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }),
    );
  }
}
