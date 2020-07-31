import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  static const String TITLE = "Camera";
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Camera"),
      ),
    );
  }
}
