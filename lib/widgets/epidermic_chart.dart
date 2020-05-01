import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:medng/widgets/loading.dart';
import 'package:pie_chart/pie_chart.dart';

class EpidermiChart extends StatefulWidget {
  EpidermiChart({Key key}) : super(key: key);

  @override
  _EpidermiChartState createState() => _EpidermiChartState();
}

class _EpidermiChartState extends State<EpidermiChart> {
  final List<MaterialColor> _colors = [Colors.blue, Colors.green, Colors.red];
  Map<String, double> dataMap = new Map();
  @override
  void initState() {
    getStateData().then((value) {
      setState(() {
        dataMap.putIfAbsent("Active cases",
            () => double.parse(value["active"].toString()));
        dataMap.putIfAbsent(
            "Recovered", () => double.parse(value["recovered"].toString()));
        dataMap.putIfAbsent(
            "Deaths", () => double.parse(value["deaths"].toString()));
      });
    });

    setUpTimedFetch();
    super.initState();
  }

  setUpTimedFetch() {
    Timer.periodic(Duration(minutes: 5), (timer) {
      getStateData().then((value) {
        setState(() {
          dataMap.putIfAbsent(
              "Active cases", () => double.parse(value["active"].toString()));
          dataMap.putIfAbsent(
              "Recovered", () => double.parse(value["recovered"].toString()));
          dataMap.putIfAbsent(
              "Deaths", () => double.parse(value["deaths"].toString()));
        });
      });
    });
  }

  Future getStateData() async {
    String url = "https://corona.lmao.ninja/v2/countries/Nigeria";
    //"https://covid9ja.herokuapp.com/api/confirmed";
    http.Response response = await http.get(url);
    return json.decode(response.body);
    //return (res as List).map((data) => new StateData.fromJson(data)).toList();
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStateData(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return Container(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: (dataMap.length > 0)
                            ? PieChart(
                                dataMap: dataMap,
                                animationDuration: Duration(milliseconds: 800),
                                chartLegendSpacing: 16.0,
                                chartRadius: MediaQuery.of(context).size.width,
                                showChartValuesInPercentage: false,
                                showChartValues: true,
                                showChartValuesOutside: false,
                                chartValueBackgroundColor: Colors.white,
                                showLegends: true,
                                legendPosition: LegendPosition.top,
                                decimalPlaces: 0,
                                showChartValueLabel: true,
                                colorList: _colors,
                                initialAngle: 0,
                                chartValueStyle:
                                    defaultChartValueStyle.copyWith(
                                  color: Colors.blueGrey[900].withOpacity(0.9),
                                ),
                                chartType: ChartType.disc,
                              )
                            : LoadingWidget()),
                  ],
                ));
          } else {
            return Center(
              child: Text(
                "Error fetching data at the moment. Kindly Check your Network",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.width / 20,
                    fontFamily: 'Roboto'),
              ),
            );
          }
        } else {
          return LoadingWidget();
        }
      },
    );
  }
}
