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
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black12
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  
              ],
            )
          ),
        ]
      ),
    );
  }
}