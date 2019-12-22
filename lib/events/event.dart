import 'package:flutter/material.dart';

class Each_Event extends StatefulWidget {
  @override
  _Each_EventState createState() => _Each_EventState();
}

class _Each_EventState extends State<Each_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 300.0,
          backgroundColor: Color(0xFF006064),
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('NAME OF EVENT'),
            background: Stack(fit: StackFit.expand, children: [
              new Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                fit: BoxFit.cover,
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment(0.0, 0.5),
                  end: Alignment(0.0, 0.0),
                  colors: <Color>[
                    Color(0x60000000),
                    Color(0x00000000),
                  ],
                )),
              ),
            ]),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.pages),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'HelloHello guys,This is to remind you that the finals of the Junior Code Cracker by the GNU Linux Users\' Group shall be held soon. This will present you with an opportunity to prove your acumen and be the best "CodeCrackers" in your year. ', //name of each event from backend
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 1.0,
                            fontFamily: "Rubik-Regular"),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 600,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      '01-11-2018',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1.0,
                          fontFamily: "Rubik-Regular"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 600,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.link),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'http://imoj.in/wacnitd',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1.0,
                          fontFamily: "Rubik-Regular"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 600,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      '+91 7595932690',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1.0,
                          fontFamily: "Rubik-Regular"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 600,
              child: Divider(
                color: Colors.black,
              ),
            ),
          ],
        )),
      ]),
    );
  }
}
