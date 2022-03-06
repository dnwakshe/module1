import 'package:flutter/material.dart';

class track extends StatefulWidget {
  const track({ Key? key }) : super(key: key);

  @override
  _trackState createState() => _trackState();
}

class _trackState extends State<track> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Map")),
    );
  }
}