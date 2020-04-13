import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:medng/models/stateModel.dart';
import 'package:medng/models/state_activity.dart';
import 'package:medng/widgets/loading.dart';

class StateChart extends StatefulWidget {
  StateChart({Key key}) : super(key: key);

  @override
  _StateChartState createState() => _StateChartState();
}

class _StateChartState extends State<StateChart> {
  //List data = [];
  Future<StateListModel> StateListFuture;
  final List<MaterialColor> _colors = [Colors.blue, Colors.red, Colors.indigo];
  @override
  void initState() {
    // getStateData().then((value) {
    setState(() {
      StateListFuture = getStateData();
    });
    setUpTimedFetch();
    // });
    super.initState();
  }

  setUpTimedFetch() {
    Timer.periodic(Duration(minutes: 5), (timer) {
      setState(() {
        StateListFuture = getStateData();
      });
    });
  }

  Future<StateListModel> getStateData() async {
    String url = "https://covid9ja.herokuapp.com/api/states";
    final response = await http.get(url);
    return StateListModel.fromJson(json.decode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<StateListModel>(
        future: StateListFuture,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data.stateList != null) {
                if (snapshot.data.stateList.length > 0) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: ListView.builder(
                            itemCount: snapshot.data.stateList.length,
                            itemBuilder: (BuildContext context, int index) {
                              final MaterialColor color =
                                  _colors[index % _colors.length];
                              return getListItemUI(
                                  snapshot.data.stateList[index], color);
                            },
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

Widget getListItemUI(stateModel data, Color color) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: color,
      child: Text(data.States[0]),
    ),
    title: Text(
      data.States,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: subtitleText(data.No_of_cases, data.No_on_admission),
    isThreeLine: true,
  );
}

Widget subtitleText(String cases, String admission) {
  Text casesTxt =
      Text("Confirmed cases $cases", style: TextStyle(color: Colors.black));
  Text admi =
      Text("Confirmed cases $admission", style: TextStyle(color: Colors.green));
  return casesTxt;
}

Widget message(String mess, Color color, double height) => Center(
      child: Text(
        "Something went wrong.",
        style: TextStyle(
            color: Colors.red, fontSize: height, fontFamily: 'Roboto'),
      ),
    );
