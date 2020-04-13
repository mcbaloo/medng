import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class NndcContact extends StatefulWidget {
  NndcContact({Key key}) : super(key: key);

  @override
  _NndcContact createState() => _NndcContact();
}

class _NndcContact extends State<NndcContact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Place a Call',
                style: TextStyle(
                  color: Color(0xff414D55),
                  fontSize: MediaQuery.of(context).size.height / 23,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 25),
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Text(
                      "Click on the phone number on the address and we will connect you to NCDC",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontFamily: 'Roboto'),
                    ),
                    // ),
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: NcdcDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget NcdcDetails() => Card(
      elevation: 0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.location_on, size: 20),
            title: Text('Plot 801, Ebitu Ukiwe Street, Jabi, Abuja, Nigeria',
                style: TextStyle(color: Colors.black)),
          ),
          //SizedBox(height: 5),
          GestureDetector(
            onTap: () => _lunchPhone,
            child: ListTile(
              leading: Icon(Icons.phone, size: 20),
              title:
                  Text('0800097000010', style: TextStyle(color: Colors.black)),
            ),
          ),

          // ListTile(
          //   leading: Icon(FontAwesomeIcons, size: 20),
          //   title: Text('@NCDCgov', style: TextStyle(color: Colors.black)),
          // ),
          // ListTile(
          //   leading: Icon(FontAwesomeIcons.phone, size: 20),
          //   title: Text('COVID19.NCDC.GOV.NG',
          //       style: TextStyle(color: Colors.black)),
          // ),
        ],
      ),
    );

_lunchPhone() {
  print("here");
  String number = '0800097000010';
  UrlLauncher.launch("tel:$number");
}
