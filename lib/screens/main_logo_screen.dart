import 'package:flutter/material.dart';

import 'package:covkonect/screens/auth_screen.dart';

import 'leaderboard.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: Image.asset(
                'assets/Covkonect_2.png',
              ),
            ),
          ),
          Text(
            'Join Us As',
            style: TextStyle(
                color: Color(0xFF0A2472),
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                  );
                },
                child: Text('COVID Affected'),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Leader()),
                  );
                },
                child: Text('Volunteers'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Color(0xFFFBF9FF),
    primary: Color(0xFF0A2472),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );
}
