import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DailyCase extends StatefulWidget {
  DailyCase({Key key}) : super(key: key);

  @override
  DailyCaseState createState() => DailyCaseState();
}

class DailyCaseState extends State<DailyCase> {
  var cases = 0;
  Timer timer;
  Future getStateData() async {
    String url = "https://corona.lmao.ninja/countries/Nigeria";
    //"https://covid9ja.herokuapp.com/api/confirmed";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  void initState() {
    getStateData().then((value) {
      setState(() {
        cases = int.parse(value["todayCases"].toString());
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
          cases = int.parse(value.last["Cases"].toString());
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
              "$cases Cases Today",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
            );
          } else {
            return Text(
              "0 Cases Today",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
            );
          }
        } else {
          return Text(
            "0 Cases Today",
            style: TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
          );
        }
      },
    );
  }
}
