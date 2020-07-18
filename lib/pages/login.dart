import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('DOJO SPORTS',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Welcome back,',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  'please login',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  'to your account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                     
                      SizedBox(
                        height: 15.0,
                      ),
                      
                      SizedBox(
                        height: 15.0,
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    prefixIcon: Padding(padding: EdgeInsets.all(15), child: Text('+91 ')),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              
                GestureDetector(
                  onTap: (){
                  },
                                    child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );

  }
}