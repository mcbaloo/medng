import 'package:flutter/material.dart';
import 'package:medng/screens/epidermic.dart';
import 'package:medng/screens/state.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> children = [Epidermic(), StateRecord()];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.push(context, MaterialPageRoute(builder: (_) => children[index]));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: onTappedBar,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.home,
            size: 20.0,
            color: Color(0xff414D55),
          ),
          title: Text("Home", style: TextStyle(color: Color(0xff2662F0))),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.location_city,
            size: 20.0,
            color: Color(0xff414D55),
          ),
          title: Text("State", style: TextStyle(color: Color(0xff2662F0))),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.location_on,
            size: 20.0,
            color: Color(0xff414D55),
          ),
          title: new Text(
            'World',
            style: TextStyle(color: Color(0xff2662F0)),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.center_focus_strong,
            size: 20.0,
            color: Color(0xff414D55),
          ),
          title: Text(
            'hvhbv',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
