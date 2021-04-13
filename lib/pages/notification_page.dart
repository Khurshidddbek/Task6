import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static final String id = "NotificationPage";

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notification'),
      ),
      body: Center(
        child: Text('Not found!'),
      ),
    );
  }
}
