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
        WCards("My Status", "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", "Tap to add Status"),
        Divider(),
        Heading("Recent updates"),
        WCards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        WCards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        Heading("Today"),
        WCards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        WCards(messageData[3].name, messageData[3].imageUrl, messageData[3].time)
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
      child: Padding(padding: EdgeInsets.only(
        left: 5.0, top: 5.0
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