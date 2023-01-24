import 'package:covkonect/components/list_view_card.dart';
import 'package:covkonect/screens/guidelines_screen.dart';
import 'package:covkonect/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:covkonect/screens/map_view_screen.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GuidelinesScreen()),
              );
            },
            icon: Icon(
              Icons.file_copy,
            ),
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
        body: Align(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(16)),
              Text('Volunteers near by',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF0A2472),
                  ),
                  textAlign: TextAlign.left),
              Container(
                  margin: EdgeInsets.all(8),
                  height: 300,
                  child: ListView(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Dilip Vanamali',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                          onTap: null,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Neeraj Mullapudi',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                          onTap: null,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        //color: Color(0xffff8e2b),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Ronsher Pavani',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Anagha Mantha',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        //color: Color(0xffff8e2b),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Dinah Maranraju',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Likhila Chaparala',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        //color: Color(0xffff8e2b),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Kovida Ponna',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Udjith Darbha',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        //color: Color(0xffff8e2b),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Rathika Gorthi',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Kiya Raavi',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        //color: Color(0xffff8e2b),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Shika Aari',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Sarasi Pasala',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        //color: Color(0xffff8e2b),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Saanvi Marella',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF0A2472),
                          ),
                          title: Text(
                            'Prangal Sheikh',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                            ),
                          ),
                          trailing: Icon(
                            Icons.chat_outlined,
                            color: Color(0xFF0A2472),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFFF7F51), width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  )),
              // TextButton(
              //     child:
              //         Text('Switch to Map View', style: TextStyle(fontSize: 18)),
              //     style: ButtonStyle(
              //         // padding: MaterialStateProperty.all<EdgeInsets>(
              //         //     EdgeInsets.all(8)),
              //         backgroundColor:
              //             MaterialStateProperty.all<Color>(Color(0xFF0A2472)),
              //         foregroundColor:
              //             MaterialStateProperty.all<Color>(Colors.white),
              //         //alignment: Alignment.bottomRight,
              //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //             RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(10.0),
              //                 side: BorderSide(color: Color(0xFF0A2472))))),
              //     onPressed: () => null),
              Container(
                height: 210,
                margin: const EdgeInsets.all(10.0),
                child: ListViewCard(),
              ),
              TextButton(
                child:
                    Text('Switch to Map View', style: TextStyle(fontSize: 18)),
                style: ButtonStyle(
                    // padding: MaterialStateProperty.all<EdgeInsets>(
                    //     EdgeInsets.all(8)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF0A2472)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    //alignment: Alignment.bottomRight,
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Color(0xFF0A2472))))),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapViewScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
