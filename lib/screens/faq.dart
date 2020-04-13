import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medng/widgets/nav_menu.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width / 24;
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
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "What is the best way to wash your hands properly?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size, "Step 1: Wet hands with running water."),
                      faqText(size,
                          "Step 2: Apply enough soap to cover wet hands."),
                      faqText(size,
                          "Step 3: Scrub all surfaces of the hands - including back of hands, between fingers and under nails- for at least 20 seconds."),
                      faqText(
                          size, "Step 4: Rinse throughly with running water."),
                      faqText(size,
                          "Step 5: Dry hands with a clean cloth or single-use towel"),
                      faqText(size,
                          "Step 5: Dry hands with a clean cloth or single-use towel"),
                      faqText(size,
                          "Wash your hands often, especially before eating; after blowing your nose, coughing, or sneezing; and going to the bathroom."),
                      faqText(size,
                          "If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. Always wash hands with soap and water, if hands are visibly dirty."),
                    ])),
                SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Does COVID-19 affect children?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size,
                          "This is a new virus and we do not know enough yet about how it affects children or pregnant women. We know it is possible for people of any age to be infected and transmit the virus, although older people and/or those with pre-existing medical conditions seem more likely to develop serious illness. Children may be disproportionately affected by measures taken to control the outbreak, such as school closures and physical distancing measures. Special attention needs to be paid to prevent and minimize negative consequences for children as much as possible."),
                    ])),
                SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "What should I do if my child has symptoms of COVID-19?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size,
                          "Seek medical attention, but remember that it’s flu season in the Northern Hemisphere, and symptoms of COVID-19 such as cough or fever can be similar to those of the flu, or the common cold – which are a lot more frequent. Continue to follow good hand and respiratory hygiene practices like regular handwashing, and keep your child up to date with vaccinations – so that your child is protected against other viruses and bacteria causing diseases. As with other respiratory infections like the flu, seek care early if you or your child are having symptoms, and try to avoid going to public places (workplace, schools, public transport), to prevent it spreading to others."),
                    ])),
                SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "What should I do if a family member displays symptoms?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size,
                          "You should seek medical care early if you or your child has a fever, cough or difficulty breathing. Consider calling ahead to tell your health care provider if you have traveled to an area where COVID-19 has been reported, or if you have been in close contact with someone with who has traveled from one of these areas and has respiratory symptoms."),
                    ])),
                SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Should I take my child out of school?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size,
                          "If your child shows symptoms of COVID-19, seek medical care, and follow the instructions from the health care provider. Otherwise, as with other respiratory infections like the flu, keep your child well rested at home while symptomatic, and avoid going to public places, to prevent spread to others. When possible, it’s best to keep your child in class. However, it is important to follow the guidance of your local and national authorities. If national and/or local authorities have suspended classes, follow school and other official guidance on how to best ensure your children can continue with their education. It’s also important to ensure appropriate supervision for children who are out of school, to allow for continued education and also for their protection – from COVID-19, but also other potential threats they may face when left unsupervised. If your child is staying at home because of school closures, continue teaching him or her good hand and respiratory hygiene practices, like frequent handwashing, covering coughs or sneezes with a flexed elbow or tissue, then throwing away the tissue into a closed bin, not touching their eyes, mouths or noses if they haven’t properly washed their hands (go to the precautions sscreen for tips on proper handwashing), and avoiding close contact with anyone with cold/flu-like symptoms."),
                    ])),
                SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Can pregnant women pass coronavirus to unborn children?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size,
                          "At this time, there is not enough evidence to determine whether the virus is transmitted from a mother to her baby during pregnancy, or the potential impact this may have on the baby. This is currently being investigated. Pregnant women should continue to follow appropriate precautions to protect themselves from exposure to the virus, and seek medical care early, if experiencing symptoms, such as fever, cough or difficulty breathing."),
                    ])),
                SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Is it safe for a mother to breastfeed if she is infected with coronavirus?",
                                //textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      faqText(size,
                          "All mothers in affected and at-risk areas who have symptoms of fever, cough or difficulty breathing, should seek medical care early, and follow instructions from a health care provider. Considering the benefits of breastfeeding and the insignificant role of breastmilk in the transmission of other respiratory viruses, the mother can continue breastfeeding, while applying all the necessary precautions. For symptomatic mothers well enough to breastfeed, this includes wearing a mask when near a child (including during feeding), washing hands before and after contact with the child (including feeding), and cleaning/disinfecting contaminated surfaces – as should be done in all cases where anyone with confirmed or suspected COVID-19 interacts with others, including children. If a mother is too ill, she should be encouraged to express milk and give it to the child via a clean cup and/or spoon – all while following the same infection prevention methods."),
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

faqText(double size, String question) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            question,
            style: TextStyle(
                fontSize: size,
                height: 1.3,
                fontFamily: 'Roboto-light',
                fontWeight: FontWeight.w300),
          ))
        ],
      ),
    );
