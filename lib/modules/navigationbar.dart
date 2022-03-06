import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gps_module/constants/color_constants.dart';
import 'package:gps_module/dashboard.dart';
import 'package:gps_module/views/profile.dart';
import 'package:gps_module/views/track.dart';
import 'package:gps_module/views/vehicles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  DateTime previous_backpress = DateTime.now();
  List<Widget> pages = [
    Dashbaord(),
    vehicleList(),
    track(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(previous_backpress);
        final catExit = timegap >= Duration(seconds: 2);
        previous_backpress = DateTime.now();
        if (catExit) {
          final snack = SnackBar(
            content: Text('Press back again to exit'),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.track_changes, color: Colors.black),
          ),
          title: Text(
            'Arya Omnitalk',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: getBody(),
        bottomNavigationBar: SizedBox(
          height: Get.height * 0.08,
          width: Get.width / 1,
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: AppColors.appbarColor,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    "Home",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list_outlined,
                  ),
                  title: Text(
                    "Vehicles",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.map,
                  ),
                  title: Text(
                    "Track",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    "Profile",
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return pages.elementAt(_currentIndex);
  }
}
