import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  static final String id = "MessagePage";

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
              _customListTitle(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customListTitle(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      height: size.width * 0.2,
      // color: Colors.red,
      decoration: BoxDecoration(
        // color: Colors.red,
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: size.width * 0.18 / 2,
            backgroundImage: AssetImage('assets/images/ic_image5.jpg'),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'Sobirov Xurshid',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width * 0.06,
                    ),
                    Text('14:20'),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.02,
                ),
                Text(
                  'Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text ',
                  style: TextStyle(color: Colors.grey[600]),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Center(
            child: Icon(
              Icons.chevron_right,
              size: 28,
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
        ],
      ),
    );
  }
}
