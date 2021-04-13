import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/message_page.dart';
import 'package:flutter_app/pages/notification_page.dart';
import 'package:flutter_app/pages/video_page.dart';

import 'home_page.dart';

class FirstPage extends StatefulWidget {
  static final String id = "FirstPage";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(),
          MessagePage(),
          VideoPage(),
          NotificationPage(),
        ],
      ),
      appBar: AppBar(
        title: Text('Tasks of lesson 6'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ic_image1.jpg'),
                    radius: 38,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Khurshidbek',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Khurshidbek@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 25,
                  ),
                  Text('Home'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.person_outline),
                  SizedBox(
                    width: 25,
                  ),
                  Text('Profile'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.people_outline),
                  SizedBox(
                    width: 25,
                  ),
                  Text('Aboutus'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.videocam), label: 'Video'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.pink,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
