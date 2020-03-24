import 'package:flutter/material.dart';
import 'package:vvg_demo/screens/consultations_screen.dart';
import 'package:vvg_demo/screens/home_screen.dart';
import 'package:vvg_demo/screens/more_screen.dart';
import 'package:vvg_demo/screens/pets_screen.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  String _title;
  final List<Widget> _items = [
    HomeScreen(),
    ConsultationsScreen(),
    PetsScreen(),
    MoreScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'HOME';
          }
          break;
        case 1:
          {
            _title = 'CONSULTATIONS';
          }
          break;
        case 2:
          {
            _title = 'PETS';
          }
          break;
        case 3:
          {
            _title = 'MORE';
          }
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _title = "HOME";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          _title,
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF32A287),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})
        ],
      ),
      body: _items[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          fixedColor: Color(0xFF32A287),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                // color: Color(0xFF32A287),
              ),
              title: Text(
                'HOME',
                style: TextStyle(fontSize: 10),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 30,
                // color: Color(0xFF32A287),
              ),
              title: Text(
                'CONSULTATIONS',
                style: TextStyle(fontSize: 10),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pets,
                size: 30,
                // color: Color(0xFF32A287),
              ),
              title: Text(
                'PETS',
                style: TextStyle(fontSize: 10),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                size: 30,
                // color: Color(0xFF32A287),
              ),
              title: Text(
                'MORE',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ]),
    );
  }
}
