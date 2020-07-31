import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  static const String TITLE = "Chats";

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            onTap: () {
              print("Hello $index");
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            title: Text(
              "Nav",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "The one The only Rock Nav babyyy",
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text("01:05 AM"),
          ),
        );
      },
    );
  }
}

//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: <Widget>[
//FlatButton(
//child: Text("Broadcast Lists"),
//),
//FlatButton(
//child: Text("New Group"),
//),
//],
//),
