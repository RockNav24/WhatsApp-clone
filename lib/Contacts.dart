import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  static const String TITLE = "Status";

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ContactsBook(
                "https://www.attractivepartners.co.uk/wp-content/uploads/2017/06/profile.jpg"),
          );
        });
  }
}

class ContactsBook extends StatelessWidget {
  final String url;
  ContactsBook(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      height: 75,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(url),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sandu dahanayake",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.call_missed_outgoing,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("6 minutes ago 01:49 AM"),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
