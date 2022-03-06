import 'package:flutter/material.dart';

class vehicleList extends StatefulWidget {
  const vehicleList({ Key? key }) : super(key: key);

  @override
  _vehicleListState createState() => _vehicleListState();
}

class _vehicleListState extends State<vehicleList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Vehicle List")),
    );
  }
}