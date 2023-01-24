// import 'dart:html';

import 'package:flutter/material.dart';
import 'success_screen.dart';

class StackDemo extends StatefulWidget {
  @override
  _StackDemoState createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  int _radioValue;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 800,
            color: Color(0xFFFF7F51),
            // height: MediaQuery.of(context).size.height * .35,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .25,
          left: 15,
          right: 15,
          child: Card(
            elevation: 15,
            color: Color(0xFFFBF9FF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: MediaQuery.of(context).size.height * .90,
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.masks,
                        color: Color(0xFF0A2472),
                        size: 45,
                      ),
                      Text("Mask?"),
                      new Radio(
                        value: 1,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 2,
                    color: Color(0xFF0A2472),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.clean_hands,
                        color: Color(0xFF0A2472),
                        size: 45,
                      ),
                      Text("Sanitized?"),
                      new Radio(
                        value: 1,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // ElevatedButton(
        //   onPressed: null,
        //   child: Text('Done'),
        // ),
        ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SuccessScreen()),
            );
          },
          child: Text('DONE'),
        ),
      ],
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Color(0xFF0A2472),
    primary: Color(0xFFFBF9FF),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}
