import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medng/widgets/nav_menu.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key key}) : super(key: key);

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
                  'Covid-19 FAQs',
                  style: TextStyle(
                    color: Color(0xff414D55),
                    fontSize: MediaQuery.of(context).size.height / 23,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).primaryColor),
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              width: MediaQuery.of(context).size.height / 2,
                              //height: MediaQuery.of(context).size.height / 1.2,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "What is the best way to wash your hands properly?",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            "Step 1: Wet hands with running water \n \n Step 2: Apply enough soap to cover wet hands \n \n Step 3: Scrub all surfaces of the hands - including back of hands, between fingers and under nails- for at least 20 seconds. \n \n Step 4: Rinse throughly with running water. \n \n Step 5: Dry hands with a clean cloth or single-use towel \n \n Wash your hands often, especially before eating; after blowing your nose, coughing, or sneezing; and going to the bathroom. \n \n If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. Always wash hands with soap and water, if hands are visibly dirty."),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          width: MediaQuery.of(context).size.width,
                          //height: MediaQuery.of(context).size.height / 1.2,
                          child: Column(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "What is the best way to wash your hands properly?",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Step 1: Wet hands with running water \n \n Step 2: Apply enough soap to cover wet hands \n \n Step 3: Scrub all surfaces of the hands - including back of hands, between fingers and under nails- for at least 20 seconds. \n \n Step 4: Rinse throughly with running water. \n \n Step 5: Dry hands with a clean cloth or single-use towel \n \n Wash your hands often, especially before eating; after blowing your nose, coughing, or sneezing; and going to the bathroom. \n \n If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. Always wash hands with soap and water, if hands are visibly dirty."),
                                  ),
                                ],
                              ),
                            ),
                          ]),
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
  }
}
