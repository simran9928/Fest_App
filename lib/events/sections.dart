import 'package:flutter/material.dart';
import 'event_list.dart';

final height= 100.0; //height of ech card

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override

  //each type of event
  void OnlineEvent()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context){return Event_Details();}));
  }
  //every function wth its navigation will be written here



  Widget build(BuildContext context) {
    return Scaffold(
        body:new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          color: Colors.black26,
        ),
      CustomScrollView(
         slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
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
              color: Colors.white,
            ),
            )
          ),
           SizedBox(
            height: 15.0,
          ),
          Eachcard('On-site Events',Colors.deepOrange[100],Colors.deepOrange[900],OnlineEvent),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Online Events',Colors.lightGreen[100],Colors.lightGreen[900],OnlineEvent),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Workshops',Colors.yellow[100],Colors.yellow[800],OnlineEvent),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Special Attraction',Colors.pink[100],Colors.pink[900],OnlineEvent),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Eachcard('Ignitia',Colors.blue[100],Colors.blue[900],OnlineEvent),
          SizedBox(
            height: 15.0,
          ),
        ],
    ),)])])
    );
  }

//Each card have all the parameters

  Eachcard(String title1, Color card_color, Color text_color, Function TypeOfEvent)
  {return Row(
      children: <Widget>[
              Expanded(
                flex:1,
                child:FlatButton(                            
                  onPressed: (){TypeOfEvent();},
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
