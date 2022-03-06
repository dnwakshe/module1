import 'package:flutter/material.dart';

class conectionFail extends StatefulWidget {
  const conectionFail({Key? key}) : super(key: key);

  @override
  _conectionFailState createState() => _conectionFailState();
}

class _conectionFailState extends State<conectionFail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.messenger, size: 80, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.portable_wifi_off,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('No internet connection !'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Try again'),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(
                color: Colors.transparent,
                // width: 10,
              ),
            ))),
          )
        ],
      ),
    );
  }
}
