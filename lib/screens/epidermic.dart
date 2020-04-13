import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medng/screens/daily.dart';
import 'package:medng/screens/home.dart';
import 'package:medng/screens/nndc.dart';
import 'package:medng/screens/state.dart';
import 'package:medng/widgets/nav_menu.dart';

class Epidermic extends StatefulWidget {
  Epidermic({Key key}) : super(key: key);

  @override
  _EpidermicState createState() => _EpidermicState();
}

class _EpidermicState extends State<Epidermic>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _children = [
    new Dashboard(),
    new StateRecord(),
    new Daily(),
    new NndcContact()
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new Scaffold(
        //resizeToAvoidBottomPadding: false,
        backgroundColor: Theme.of(context).primaryColor,
        drawer: NavDrawer(),
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: Theme.of(context).accentColor),
          titleSpacing: 0.0,
          title: Text(
            "Menu",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 40,
                fontFamily: 'Roboto',
                color: Color(0xff2662F0)),
          ),
          elevation: 0,
        ),
        body: _children.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: onTappedBar,
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
              title: Text("States", style: TextStyle(color: Color(0xff2662F0))),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.calendar_today,
                size: 20.0,
                color: Color(0xff414D55),
              ),
              title: new Text(
                'Daily',
                style: TextStyle(color: Color(0xff2662F0)),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.local_hospital,
                size: 20.0,
                color: Color(0xff414D55),
              ),
              title: Text(
                'NCDC',
                style: TextStyle(color: Color(0xff414D55)),
              ),
            ),
          ],
        ));
    //  Container(
    //     padding: EdgeInsets.fromLTRB(0, 0, 0, 0), child: BottomNav()));
  }
}
