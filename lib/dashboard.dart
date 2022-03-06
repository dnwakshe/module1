import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/color_constants.dart';

class Dashbaord extends StatefulWidget {
  const Dashbaord({Key? key}) : super(key: key);

  @override
  _DashbaordState createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashbaord> {
  List<String> _list = [
    "Dnyaneshwar",
    "Suraj",
    "Kishor",
    "Rahul",
    "Pallavi",
    "Shreenivas",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                height: Get.height / 15,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                  color: AppColors.appBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.search, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.5),
                        color: AppColors.appBgColor,
                      ),
                      child: Center(child: Text("Hello world")),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.5),
                        color: AppColors.appBgColor,
                      ),
                      child: Center(child: Text("Hello world")),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.5),
                        color: AppColors.appBgColor,
                      ),
                      child: Center(child: Text("Hello world")),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.5),
                        color: AppColors.appBgColor,
                      ),
                      child: Center(child: Text("Hello world")),
                    ),
                  ],
                ),
              ),
            ),
           
            Container(
                margin: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height / 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(10.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.5),
                      topRight: Radius.circular(10.5)),
                  color: AppColors.appBgColor,
                ),
                child: ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(_list[index]),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }

  Widget getList() {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(_list[index]),
          ),
        );
      },
    );
  }
}
