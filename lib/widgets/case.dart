import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:medng/models/dailyModel.dart';

class Case extends StatefulWidget {
  Case({Key key}) : super(key: key);

  @override
  CaseState createState() => CaseState();
}

class CaseState extends State<Case> {
  var cases = 0;
  Timer timer;
  Future getStateData() async {
    String url = "https://corona.lmao.ninja/countries/Nigeria";
    //"https://api.covid19api.com/country/nigeria/status/confirmed/live";
    //"https://covid9ja.herokuapp.com/api/confirmed";
    http.Response response = await http.get(url);
    //var res =
    return json.decode(response.body);
    //return (res as List).map((data) => new StateData.fromJson(data)).toList();
  }

  void initState() {
    getStateData().then((value) {
      setState(() {
        cases = int.parse(value["cases"].toString());
        //int.parse(value.last["Cases"].toString());
      });
    });
    setUpTimedFetch();
    //});
    //timer = Timer.periodic(Duration(minutes: 3), (Timer t) => addValue());
    super.initState();
  }

  setUpTimedFetch() {
    Timer.periodic(Duration(minutes: 5), (timer) {
      getStateData().then((value) {
        setState(() {
          cases = int.parse(value["cases"].toString());
          //cases = int.parse(value.last["Cases"].toString());
        });
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStateData(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (cases != null) {
            return Text(
              "$cases Cases",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
            );
          } else {
            return Text(
              "0 Cases",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
            );
          }
        } else {
          return Text(
            "0 Cases",
            style: TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
          );
        }
      },
    );
  }
}
