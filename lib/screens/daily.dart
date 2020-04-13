import 'package:flutter/material.dart';
import 'package:medng/widgets/country_tag.dart';
import 'package:medng/widgets/daily_case.dart';
import 'package:medng/widgets/daily_widget.dart';

class Daily extends StatefulWidget {
  Daily({Key key}) : super(key: key);

  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
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
                              DailyCase(),
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
                child: DailyWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
