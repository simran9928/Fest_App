import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  var _name = "Loading...";
  var _email = "Loading..";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(_email),
            accountName: Text(_name),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                "${_name[0].toUpperCase()}",
                textScaleFactor: 2.0,
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text("Events"),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text("Schedule"),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text("Forum"),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text("Feedback"),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
