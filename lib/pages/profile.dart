import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.orangeAccent[100],
                    borderRadius: BorderRadius.circular(8.0)),
                height: 50,
                width: 50,
                child: Center(
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Text('Profile',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
            ),
            SizedBox(height: 20.0,),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.orangeAccent[100],
                    borderRadius: BorderRadius.circular(8.0)),
                height: 50,
                width: 50,
                child: Center(
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Text('DOJO Support',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
            ),
                        SizedBox(height: 20.0,),

            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.orangeAccent[100],
                    borderRadius: BorderRadius.circular(8.0)),
                height: 50,
                width: 50,
                child: Center(
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
              title: Text('Notifications',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
            ),
                        SizedBox(height: 20.0,),

            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.orangeAccent[100],
                    borderRadius: BorderRadius.circular(8.0)),
                height: 50,
                width: 50,
                child: Center(
                  child: Icon(
                    Icons.exit_to_app,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Text('Log Out',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
