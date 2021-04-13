import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/message_page.dart';
import 'package:flutter_app/pages/notification_page.dart';
import 'package:flutter_app/pages/video_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstPage(),
        routes: {
          HomePage.id: (context) => HomePage(),
          MessagePage.id: (context) => MessagePage(),
          VideoPage.id: (context) => VideoPage(),
          NotificationPage.id: (context) => NotificationPage(),
        });
  }
}
