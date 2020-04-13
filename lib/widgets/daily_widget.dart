import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medng/models/dailyModel.dart';
import 'package:medng/widgets/loading.dart';

class DailyWidget extends StatefulWidget {
  DailyWidget({Key key}) : super(key: key);

  @override
  _DailyWidgetState createState() => _DailyWidgetState();
}

class _DailyWidgetState extends State<DailyWidget> {
  Future<DailyModel> DailyModelFuture;
  final List<MaterialColor> _colors = [Colors.blue, Colors.red, Colors.indigo];

  @override
  void initState() {
    setState(() {
      DailyModelFuture = getResponse();
    });
    // });
    setUpTimedFetch();
    super.initState();
  }

  setUpTimedFetch() {
    Timer.periodic(Duration(minutes: 5), (timer) {
      setState(() {
        DailyModelFuture = getResponse();
      });
    });
  }

  Future<DailyModel> getResponse() async {
    String url = "https://corona.lmao.ninja/countries/Nigeria";
    final response = await http.get(url);
    return DailyModel.fromJson(json.decode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DailyModel>(
        future: DailyModelFuture,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                return Container(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                            getListItemUI(
                                "T",
                                "Today's Case",
                                snapshot.data.todayCases.toString(),
                                Colors.green),
                            getListItemUI(
                                "C",
                                "Today's Death",
                                snapshot.data.todayDeaths.toString(),
                                Colors.red),
                            getListItemUI("T", "Total Cases",
                                snapshot.data.cases.toString(), Colors.red),
                            getListItemUI(
                                "R",
                                "Total Recovered",
                                snapshot.data.recovered.toString(),
                                Colors.blue),
                            getListItemUI("A", "Active Cases",
                                snapshot.data.active.toString(), Colors.blue),
                            getListItemUI("C", "Critcal Cases",
                                snapshot.data.critical.toString(), Colors.red),
                            getListItemUI(
                                "D",
                                "Total Deaths",
                                snapshot.data.todayDeaths.toString(),
                                Colors.red),
                          ]),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return message("No Data at the moment", Colors.green,
                    MediaQuery.of(context).size.width / 20);
              }
            } else {
              return message("No Data at the moment", Colors.green,
                  MediaQuery.of(context).size.width / 20);
            }
          } else if (snapshot.hasError) {
            return message("Something went wrong", Colors.red,
                MediaQuery.of(context).size.width / 20);
          } else {
            return LoadingWidget();
          }
        });
  }
}

Widget getListItemUI(
    String text, String description, String cases, Color color) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: color,
      child: Text(text),
    ),
    title: Text(
      description,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: subtitleText(cases),
    isThreeLine: true,
  );
}

Widget subtitleText(String cases) {
  Text casesTxt =
      Text("Report:  $cases", style: TextStyle(color: Colors.black));
  return casesTxt;
}

Widget message(String mess, Color color, double height) => Center(
      child: Text(
        "Something went wrong.",
        style: TextStyle(
            color: Colors.red, fontSize: height, fontFamily: 'Roboto'),
      ),
    );
