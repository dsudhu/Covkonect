import 'package:covkonect/screens/sidebar_screen.dart';
import 'package:flutter/material.dart';
import 'package:covkonect/screens/profile_screen.dart';

class GuidelinesScreen extends StatefulWidget {
  @override
  _GuidelinesScreenState createState() => _GuidelinesScreenState();
}

class _GuidelinesScreenState extends State<GuidelinesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SidebarScreen()),
              // );
            },
            icon: Icon(Icons.menu),
            iconSize: 30,
            color: Color(0xFF0A2472),
          ),
          centerTitle: true,
          title: Image.asset(
            'assets/Covkonect_appbar.png',
            width: 250,
            height: 70,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              icon: Icon(Icons.person),
              iconSize: 30,
              color: Color(0xFF0A2472),
            ),
          ],
          backgroundColor: Color(0xFFFF7F51),
        ),
        drawer: VolunteerDrawerMenu(),
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: <Widget>[
            Text('Guidelines and tips\n',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Container(
                margin: const EdgeInsets.all(10.0),
                height: 250,
                decoration: new BoxDecoration(
                    color:
                        Colors.amber[300], //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 50, 20, 50),
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/virus.png',
                              fit: BoxFit.fill,
                              height: 150,
                              width: 150,
                            ))),
                    Expanded(
                        child: Text(
                      '  Covid-19 Guidelines ',
                      style: TextStyle(fontSize: 23),
                      textAlign: TextAlign.left,
                    )),
                  ],
                )),
            Container(
                margin: const EdgeInsets.all(10.0),
                height: 250,
                decoration: new BoxDecoration(
                    color:
                        Color(0xFFFF8E2B), //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        child: Text('     Preventive\n measures ',
                            style: TextStyle(fontSize: 23),
                            textAlign: TextAlign.right)),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 50, 5, 50),
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          'assets/images/girl.png',
                          fit: BoxFit.fill,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.all(10.0),
                height: 250,
                decoration: new BoxDecoration(
                    color:
                        Colors.amber[300], //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(10, 50, 20, 50),
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/diet.png',
                              fit: BoxFit.fill,
                              height: 150,
                              width: 150,
                            ))),
                    Expanded(
                        child: Text('    Diet & Nutrition\n     tips ',
                            style: TextStyle(fontSize: 23),
                            textAlign: TextAlign.left)),
                  ],
                )),
            Container(
                margin: const EdgeInsets.all(10.0),
                height: 250,
                decoration: new BoxDecoration(
                    color:
                        Color(0xffff8e2b), //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        child: Text('     Helpline\n numbers ',
                            style: TextStyle(fontSize: 23),
                            textAlign: TextAlign.right)),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(50, 50, 10, 50),
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/images/helpline.png',
                              fit: BoxFit.fill,
                              height: 150,
                              width: 150,
                            ))),
                  ],
                )),
          ],
        ));
  }
}
