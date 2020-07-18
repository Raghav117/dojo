import 'package:flutter/material.dart';

Widget bottomContainer= Container(
  height: 200.0,
  color: Colors.white,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Popularity',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 100.0),
                Text(
                  'Calls for enquire',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Text(
                  '172',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(width: 140.0),
                Text('2142',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Text(
                  'Total Students',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 80.0),
                Text(
                  'Stories views',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                Text(
                  '93',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ), 
                SizedBox(width: 3.0,),
                Container(
                          height: 25.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green
                            ),
                              borderRadius: BorderRadius.circular(20.0)),
                              child: Center(child: Text('Update',style: TextStyle(color: Colors.green),)),
                        ),
                SizedBox(width: 90.0),
                Text(
                  '193',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
);