import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const String TITLE = "Settings";

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Setting"),
      ),
    );
  }
}
