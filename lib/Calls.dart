import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  static const String TITLE = "Calls";

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(
                "RockNav",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6zes53m4a_2VLTcmTn_bHk8NO5SkuWfcQbg&usqp=CAU"),
              ),
              subtitle: Row(
                children: <Widget>[
                  Icon(
                    Icons.call_missed_outgoing,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("6 minutes ago 01:14 PM"),
                ],
              ),
              trailing: Icon(
                Icons.call,
                color: Colors.green,
              ),
            ),
          );
        });
  }
}
