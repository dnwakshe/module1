import 'package:flutter/material.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';

class noResultFound extends StatefulWidget {
  @override
  _noResultFoundState createState() => _noResultFoundState();
}

class _noResultFoundState extends State<noResultFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
        actions: [
         
      ],),
      body: Container(
        height: Get.height/1,
        width:Get.width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  filled: true,
                  border:
                      OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),

                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black26,
                  ),
                  hintText: "Search",
                ),
              ),
            ),
            Container(
              height: Get.height/1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       fillColor: Colors.grey[200],
                  //       filled: true,
                  //       border:
                  //           OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  //       suffixIcon: Icon(
                  //         Icons.search,
                  //         color: Colors.black,
                  //       ),
                  //       hintText: "Search",
                  //     ),
                  //   ),
                  // ),
                  Icon(
                    MfgLabs.newspaper,
                    size: 40,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('No Result Found'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
