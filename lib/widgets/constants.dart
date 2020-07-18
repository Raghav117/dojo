import 'package:flutter/material.dart';

Widget outgoingContainer =Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 140.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/arrow2.png'))
                        ),
                      ),
                      title: Text(
                        'Name Surname',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Mumbai'),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '10/12/2019',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Text('4.35 PM',
                                style: TextStyle(color: Colors.grey[600]))
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green
                              ),
                                borderRadius: BorderRadius.circular(20.0)),
                                child: Center(child: Text('Success',style: TextStyle(color: Colors.green),)),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('He was contacted recently for the enquiry.',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );


    Widget failureCall=Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 80.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/arrow3.png'))
                        ),
                      ),
                      title: Text(
                        'Name Surname',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Mumbai'),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '10/12/2019',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Text('4.35 PM',
                                style: TextStyle(color: Colors.grey[600]))
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
            );