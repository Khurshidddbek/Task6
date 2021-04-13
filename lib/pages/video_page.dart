import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  static final String id = "VideoPage";

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Video'),
      ),
      body: Center(
        child: Text('Not found!'),
      ),
    );
  }
}
