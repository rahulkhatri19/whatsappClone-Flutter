import 'package:flutter/material.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Status.dart';
import 'Call.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
           IconButton(icon: Icon(Icons.search), onPressed: (){}, color: Colors.white,),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}, color: Colors.white,)
        ],
        bottom: TabBar( controller: _tabController,
        labelColor: Colors.white,
        unselectedLabelColor: Color(0xff128C7E),
        indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt,),),
           Tab(child: Text('CHATS', style: TextStyle(fontWeight: FontWeight.bold),),),
           Tab(child: Text('STATUS', style: TextStyle(fontWeight: FontWeight.bold) ),),
            Tab(child: Text('CALL', style: TextStyle(fontWeight: FontWeight.bold)),),
          ]),
      ),
      body: TabBarView(children: <Widget>[
        Camera(), Chat(), Status(), Call()
      ],
      controller: _tabController),
      floatingActionButton: FloatingActionButton(onPressed: (){}, 
      backgroundColor: Theme.of(context).accentColor,
      child: Icon(Icons.message, color: Colors.white),),
    );
  }
}