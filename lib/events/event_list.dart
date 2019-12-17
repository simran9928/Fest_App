import 'package:flutter/material.dart';


final double border_radius=8;

class Event_Details extends StatefulWidget {
  @override
  _Event_DetailsState createState() => _Event_DetailsState();
}

class _Event_DetailsState extends State<Event_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
  slivers: <Widget>[
    const SliverAppBar(
      pinned: true,
      expandedHeight: 300.0,
      backgroundColor: Colors.lime,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Type of Event'),
      ),
    ),
    SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          New_card(each_event,'name of each event', Colors.yellow[100], Image.asset('assets/g.jpeg')),
          SizedBox(
            height: 15.0,
          ),
          New_card(each_event,'name of each event', Colors.yellow[100], Image.asset('assets/g.jpeg')),
          SizedBox(
            height: 15.0,
          ),
          New_card(each_event,'name of each event', Colors.yellow[100], Image.asset('assets/g.jpeg')),
          SizedBox(
            height: 15.0,
          ),
          

        ]
        ),
      )
  ],
      ),
);
  }
}

void each_event(){}

New_card(Function each_event, String name_of_event, Color text_field_color, Image image_event)
{
  return 
           Column(
             children: <Widget>[
              FlatButton(
                onPressed: (){
                  each_event();
                },
                child: Container(
                  child: Card(
                color: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(border_radius) 
                  ),
                child:Align( 
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      child:image_event,
                      alignment: Alignment.topCenter,
                    ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                )
                  ]
                  ),
                ),
                ),),),


                SizedBox(
                  height: 0.0000001,
                ),

              FlatButton(
              onPressed: (){
                each_event();          //same as the previous container
              },
              
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(border_radius) 
                  ),
                child: Container(
                  child: Card(
                color: text_field_color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(border_radius) 
                  ),
                child:Align( 
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('$name_of_event',
                      style:TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.4,
                        fontFamily: "Rubik-Regular"
                        )
                      ),
                    alignment: Alignment.topCenter,
                ),
                Container(
                    
                alignment: Alignment.center,
                height:10,
                )
                ]
                ),
                ),
                ),),),

              SizedBox(
                width: 600,
                child: Divider(
                  color: Colors.black,
                ),
              )

                ]
                );
}