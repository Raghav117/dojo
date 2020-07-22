import 'package:dojo/models/container_model.dart';
import 'package:dojo/widgets/bottom_container.dart';
import 'package:dojo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Dojo extends StatefulWidget {
  @override
  _DojoState createState() => _DojoState();
}

class _DojoState extends State<Dojo> {
  int index = 1;

  List<Info> _info = [
    Info(text: "Rating", number: '4.7'),
    Info(text: "Batches", number: '02'),
    Info(text: "Membership", number: '04'),
    Info(text: "Instructor", number: '01'),
    Info(text: "Other", number: '02'),
  ];

  toggleContainer(index) {
    if (index == 0) {
      return Text('');
    } else if (index == 1) {
      return batches;
    } else if (index == 2) {
      return membership;
    } else if (index == 3) {
      return instructor;
    } else if (index == 4) {
      return other(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, right: 20),
            height: 115.0,
            color: Colors.grey[300],
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _info.length,
              itemBuilder: (context, _index) {
                Info info = _info[_index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      index = _index;
                    });
                    return toggleContainer(index);
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        width: 150.0,
                        color: _index == 0 ? Colors.green : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                info.text,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                info.number,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      index == _index
                          ? Container(
                              child: Image.asset("assets/polygon.png"),
                            )
                          : Container()
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey[300],
            child: Column(
              children: <Widget>[
                toggleContainer(index),
                SizedBox(
                  height: 15.0,
                ),
                bottomContainer,
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
