import 'package:flutter/material.dart';

import 'package:whats_app_clone/Contacts.dart';
import 'package:whats_app_clone/Calls.dart';
import 'package:whats_app_clone/Camera.dart';
import 'package:whats_app_clone/Chats.dart';
import 'package:whats_app_clone/Settings.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  static const APP_BAR_COLOUR = Color(0xFFf0f0f0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 1;
  List<Widget> screens = [
    Calls(),
    Chats(),
    Contacts(),
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: screens.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        centerTitle: false,
        title: Text("WhatsApp"),
        actions: currentIndex == 1
            ? <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ]
            : null,
        bottom: TabBar(
          labelStyle: TextStyle(fontWeight: FontWeight.w700),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text("CALLS"),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("CONTACTS"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: screens,
      ),
    );
  }
}
