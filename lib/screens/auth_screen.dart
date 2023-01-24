import 'dart:math';
import 'package:flutter/material.dart';

import 'package:covkonect/screens/map_view_screen.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var mainColor = Color(0xFFFF7F51);
  @override
  Widget build(BuildContext context) {
    var halfSide = MediaQuery.of(context).size.width / 2;
    var side = halfSide * sqrt(2);

    var _borders = OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF0A2472),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(32));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Color(0xFF0A2472),
            ),
          ),
          Image.asset(
            'assets/Covkonect_2.png',
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment(0, 0.50),
            child: Transform.rotate(
              angle: pi / 4,
              child: Material(
                elevation: 5,
                shadowColor: Colors.black,
                color: mainColor,
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  height: side,
                  width: side,
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Join to Connect',
                            style: TextStyle(
                              color: Color(0xFF0A2472),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                color: Color(0xFF0A2472),
                              ),
                              decoration: InputDecoration(
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: 'Enter Email',
                                hintStyle: TextStyle(
                                  color: Color(0xFF0A2472),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xFF0A2472),
                              ),
                              decoration: InputDecoration(
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Color(0xFF0A2472),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapViewScreen()),
                              );
                            },
                            backgroundColor: Color(0xFF0A2472),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: mainColor,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFF7F51)),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  //            Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomePage()),
                  // );
                },
                child: Text('I will do this later'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
