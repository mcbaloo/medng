import 'package:flutter/material.dart';
import 'package:medng/screens/epidermic.dart';
import 'package:medng/screens/faq.dart';
import 'package:medng/screens/precaution.dart';

class NavDrawer extends StatefulWidget {
  NavDrawer({Key key}) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  Route route = MaterialPageRoute(builder: (context) => Precaution());
  Route dashboard = MaterialPageRoute(builder: (context) => Epidermic());
  Route faq = MaterialPageRoute(builder: (context) => FAQ());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.fromLTRB(32, 47, 48, 0),
          children: <Widget>[
            SizedBox(
              height: 80,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Text(""),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/logo.png'))),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Dashboard',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: Color(0xff414D55)),
              ),
              onTap: () => {Navigator.push(context, dashboard)},
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text(
                'Precautions',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () => {Navigator.push(context, route)},
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text(
                'FAQ',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () => {Navigator.push(context, faq)},
            ),
          ],
        ),
      ),
    );
  }
}
