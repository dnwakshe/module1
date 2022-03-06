import 'dart:async';

import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'modules/navigationBar.dart';
import 'snake.dart';
import 'views/redultfail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: noResultFound(),
    );
  }
}

