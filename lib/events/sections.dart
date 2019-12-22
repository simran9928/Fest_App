import 'package:festappp/views/drawer.dart';
import 'package:flutter/material.dart';
import 'event_list.dart';

final height = 100.0; //height of ech card

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  void onlineEvent() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Event_Details();
    }));
  }

  List<Map<String, dynamic>> events = [
    {
      "title": "On-site Events",
      "cardColor": Colors.deepOrange[100],
      "textColor": Colors.deepOrange[900]
    },
    {
      "title": "Online Events",
      "cardColor": Colors.deepOrange[100],
      "textColor": Colors.deepOrange[900]
    },
    {
      "title": "WorkShops",
      "cardColor": Colors.deepOrange[100],
      "textColor": Colors.deepOrange[900]
    },
    {
      "title": "Special Attraction",
      "cardColor": Colors.deepOrange[100],
      "textColor": Colors.deepOrange[900]
    },
    {
      "title": "Ignitia",
      "cardColor": Colors.deepOrange[100],
      "textColor": Colors.deepOrange[900]
    }
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Activities"),
        ),
        drawer: SideDrawer(),
        body: Container(child: Column(children: List.generate(events.length, (int index) {
          return Eachcard(events[index]["title"], events[index]["cardColor"], events[index]["textColor"], onlineEvent);
        }),),));
  }

//Each card have all the parameters

  Eachcard(
      String title1, Color card_color, Color text_color, Function TypeOfEvent) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: FlatButton(
            onPressed: () {
              TypeOfEvent();
            },
            child: Container(
              child: Card(
                color: card_color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Align(
                  child: Container(
                    alignment: Alignment.center,
                    height: height,
                    child: Text(
                      "$title1",
                      style: TextStyle(
                          color: text_color,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 1.4,
                          fontFamily: "Rubik-Regular"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
