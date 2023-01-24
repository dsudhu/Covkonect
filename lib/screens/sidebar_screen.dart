import 'package:covkonect/screens/gc_main_page_screen.dart';
import 'package:covkonect/screens/guidelines_screen.dart';
import 'package:covkonect/screens/help_request_screen.dart';
import 'package:covkonect/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class VolunteerDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
        DrawerHeader(
          child: null,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Covkonect_2.png"),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          title: Text('Profile'),
          leading: Icon(Icons.person),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        Divider(),
        ListTile(
          title: Text('Group Chat'),
          leading: Icon(Icons.group_add),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GcScreen()),
            );
          },
        ),
        Divider(),
        ListTile(
          title: Text('Chat'),
          leading: Icon(Icons.chat),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Guidelines & Tips'),
          leading: Icon(Icons.file_copy),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GuidelinesScreen()),
            );
          },
        ),
        Divider(),
        ListTile(
          title: Text('Help Requests'),
          leading: Icon(Icons.list_alt_rounded),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpRequestScreen()),
            );
          },
        ),
        Divider(),
        ListTile(
            title: Text('Close'),
            leading: Icon(Icons.close),
            onTap: () {
              Navigator.of(context).pop();
            }),
      ]),
    );
  }
}
