import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medng/widgets/nav_menu.dart';

class Precaution extends StatelessWidget {
  const Precaution({Key key}) : super(key: key);

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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(18),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Covid-19 Preventions',
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
                        "How can i protect myself and others from COVID-19?",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 40,
                            fontFamily: 'Roboto'),
                      ),
                      // ),
                    ])),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                      Text(
                        "Here are some of the precautions you and your family can take to help avoid infection",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 50,
                            fontWeight: FontWeight.w300),
                      ),
                      // ),
                    ])),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).primaryColor),
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            width: MediaQuery.of(context).size.height / 4,
                            height: MediaQuery.of(context).size.height / 3,
                            child: Column(children: <Widget>[
                              Image(
                                height: MediaQuery.of(context).size.height / 6,
                                image: AssetImage(
                                    "assets/images/Coronavirus-EN-1_2.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Wash your hands frequently using soap and water or an alcohol-based hand rub",
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height / 3,
                              child: Column(children: <Widget>[
                                Image(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  image: AssetImage(
                                      "assets/images/Coronavirus-EN-2_2.png"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    "Cover mouth and nose with flexed elbow or tissue when coughing or sneezing. Dipose of Used tissue.",
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height / 3,
                              child: Column(children: <Widget>[
                                Image(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  image: AssetImage(
                                      "assets/images/Coronavirus-EN-3_2.png"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    "Avoid close contact with anyone who has cold or flu-like symptoms",
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            width: MediaQuery.of(context).size.height / 4,
                            height: MediaQuery.of(context).size.height / 3,
                            child: Column(children: <Widget>[
                              Image(
                                height: MediaQuery.of(context).size.height / 6,
                                image: AssetImage(
                                    "assets/images/Coronavirus-EN-4_2.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Regularly clean and disinfect frequently touched surfaces like phones, doorknobs, light swictches etc",
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            width: MediaQuery.of(context).size.height / 4,
                            height: MediaQuery.of(context).size.height / 3,
                            child: Column(children: <Widget>[
                              Image(
                                height: MediaQuery.of(context).size.height / 6,
                                image: AssetImage(
                                    "assets/images/Coronavirus-EN-5_0.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Regularly clean and disinfect frequently touched surfaces like phones, doorknobs, light swictches etc",
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ]),
                          ),
                        )
                      ]),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
    //  Container(
    //     padding: EdgeInsets.fromLTRB(0, 0, 0, 0), child: BottomNav()));
  }
}
