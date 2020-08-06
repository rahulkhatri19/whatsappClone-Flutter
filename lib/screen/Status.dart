import 'package:flutter/material.dart';
import '../reuseable/WCards.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        WCards("My Status", "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", "Tap to add status updates"),
        Heading("Recent updates"),
        WCards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        Divider(),
        WCards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        Divider(),
        WCards(messageData[3].name, messageData[4].imageUrl, messageData[4].time),
        Heading("Viewed updates"),
        WCards(messageData[2].name, messageData[1].imageUrl, messageData[1].time),
        Divider(),
        WCards(messageData[3].name, messageData[0].imageUrl, messageData[0].time)
      ],
    );
  }
}

class Heading extends StatelessWidget {

  final String heading;

  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff4f4f4),
      child: Padding(padding: EdgeInsets.only(
        left: 15.0, top: 8.0, bottom: 8.0
      ),
      child: Text(heading, style: 
      TextStyle(fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey),
      ),
      ),
    );
  }
}