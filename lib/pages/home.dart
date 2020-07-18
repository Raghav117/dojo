import 'package:dojo/pages/events.dart';
import 'package:dojo/pages/profile.dart';
import 'package:dojo/pages/search.dart';
import 'package:dojo/pages/timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();

  }


  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      body: PageView(
        children: <Widget>[
          Timeline(),
          Profile(),
          Events(),
          Search(),
          
          
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Material(
        elevation: 5.0,
              child: CupertinoTabBar(
          
            currentIndex: pageIndex,
            onTap: onTap,
            activeColor: Colors.red,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
              
              BottomNavigationBarItem(icon: Icon(Icons.event)),
              BottomNavigationBarItem(icon: Icon(Icons.search)),
            ]),
      ),
    );
  }
}