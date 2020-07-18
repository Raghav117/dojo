import 'package:dojo/widgets/dojo.dart';
import 'package:dojo/widgets/leads.dart';
import 'package:dojo/widgets/stories.dart';
import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

 

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Text(
              'DOJO001',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                //some function
              },
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.red,
                size: 25,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              //some function
            },
            icon: Icon(
              Icons.notifications_none,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stories(),
          Divider(
            color: Colors.grey[350],
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.red,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'DOJO001',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                  child: Text(
                'LEADS',
                style: TextStyle(color: Colors.black),
              ))
            ],
          ),
          Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
            Dojo(),
            Leads(),
        ],
      ),
          ),
        ],
      ),
      
    );
  }
}
