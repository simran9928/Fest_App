import 'package:flutter/material.dart';
import 'event.dart';

final double border_radius=8;

class Event_Details extends StatefulWidget {
  @override
  _Event_DetailsState createState() => _Event_DetailsState();
}

class _Event_DetailsState extends State<Event_Details> {
  @override


void each_event(){
  Navigator.push(context, MaterialPageRoute(builder: (context){return Each_Event();}));
}



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
          New_card(each_event,'NAME OF THE EVENT','22/12/2019', Colors.pink[100], Image.asset('assets/bg.jpg',fit: BoxFit.fill,),),
          SizedBox(
            height: 15.0,
          ),
          New_card(each_event,'name of each event','22/12/2019', Colors.pink[100], Image.asset('assets/bg.jpg',fit: BoxFit.fill,),),
          SizedBox(
            height: 15.0,
          ),
          New_card(each_event,'name of each event','22/12/2019', Colors.yellow[100], Image.asset('assets/bg.jpg',fit: BoxFit.fill,),),                
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



New_card(Function each_event, String name_of_event,String date_of_event, Color text_field_color, Image image_of_event)
{
  return 
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
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
                        child: Container(
                          height: 250,
                          padding: EdgeInsets.all(10),
                          child: image_of_event,
                          alignment: Alignment.topCenter,
                        ),
                     ),
                    ),
                  ),
                ),
                
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
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children:<Widget>[ 
                                  Text('$name_of_event',
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 1.0,
                                      fontFamily: "Rubik-Regular"
                                    )
                                  ),
                                  Text('$date_of_event',
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      letterSpacing: 1.0,
                                      fontFamily: "Rubik-Regular"
                                    )
                                  ),
                    
                                ]
                              )
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: Divider(
                    color: Colors.black,
                  ),
                )

              ]
            );
}


