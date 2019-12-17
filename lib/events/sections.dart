import 'package:flutter/material.dart';
import 'event_list.dart';


final height= 100.0; //height of ech card

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
  slivers: <Widget>[
    const SliverAppBar(
      pinned: true,
      backgroundColor: Colors.black12,
    ),
    SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            child:Text('ACTIVITIES',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              fontFamily:"BalooBhai-Regular", 
            ),
            )
          ),
           SizedBox(
            height: 18.0,
          ),
          Eachcard('On-site Events',Colors.deepOrange[100],Colors.deepOrange[900]),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Online Events',Colors.lightGreen[100],Colors.lightGreen[900]),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Workshops',Colors.yellow[100],Colors.yellow[800]),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Special Attraction',Colors.pink[100],Colors.pink[900]),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Ignitia',Colors.blue[100],Colors.blue[900]),
          SizedBox(
            height: 15.0,
          ),
        ],
    ),)])
    );
  }


  Eachcard(String title1, Color card_color, Color text_color)
  {return Row(
      children: <Widget>[
              Expanded(
                flex:1,
                child:FlatButton(                            
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Event_Details();}));},
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15) 
                  ),
                child: Container(
                  child: Card(
                color: card_color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15) 
                  ),
                child:Align( 
                child: Container(
                alignment: Alignment.center,
                height: height,
                child: Text("$title1",
                style: TextStyle(
                color: text_color,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 1.4,
                fontFamily: "Rubik-Regular"),
                ),
                ),),
                ),),),),
            ],
    );
  }
}