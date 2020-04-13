import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:medng/widgets/StateChart.dart';
import 'package:medng/widgets/case.dart';
import 'package:medng/widgets/country_tag.dart';

class StateRecord extends StatefulWidget {
  StateRecord({Key key}) : super(key: key);

  @override
  _StateRecordState createState() => _StateRecordState();
}

class _StateRecordState extends State<StateRecord> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Covid-19 Pandemic',
                style: TextStyle(
                  color: Color(0xff414D55),
                  fontSize: MediaQuery.of(context).size.height / 23,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 25),
              Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffFFFFFF)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CountryTag(),
                              Case(),
                            ],
                          ),
                        ),
                      ])),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: StateChart(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
