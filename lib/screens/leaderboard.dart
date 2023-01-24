import 'package:covkonect/models/Chat.dart';
import 'package:covkonect/screens/sidebar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Leader extends StatefulWidget {
  @override
  _LeaderState createState() => _LeaderState();
}

class _LeaderState extends State<Leader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFF7F51),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                // CircleAvatar(
                //   backgroundColor: HexColor('#FF8E2B'),
                //     child: Icon(Icons.people_outline_rounded, color: Colors.blue, size: 30, ),
                //   ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CovKonect",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: VolunteerDrawerMenu(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Text(
                  'LEADERBOARD',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/img8.png'),
                          backgroundColor: Color(0xFF0A2472),
                        ),
                        Text(
                          '2',
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: Image.asset('assets/im2.png'),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/img7.png'),
                          backgroundColor: Color(0xFF0A2472),
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 25),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/im1.png'),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/img9.png'),
                          backgroundColor: Color(0xFF0A2472),
                        ),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/im3.png'),
                        ),
                        // Image.asset('assets/images/silver-cup.png'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: chatsData.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    int t = index + 4;
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Row(
                          children: [
                            Text(
                              "$t",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Color(0xFF0A2472),
                                  backgroundImage:
                                      AssetImage(chatsData[index].image),
                                )
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chatsData[index].name,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
