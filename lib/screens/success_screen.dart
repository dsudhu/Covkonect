import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:covkonect/screens/rating_screen.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  ConfettiController controllerTopCenter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      initController();
    });
  }

  void initController() {
    controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 3));
    controllerTopCenter.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF9FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F51),
        title: Text("Covkonect"),
        // automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            buildConfettiWidget(controllerTopCenter, pi / 1),
            buildConfettiWidget(controllerTopCenter, pi / 4),
            Align(
              alignment: Alignment.center,
              child:
                  // Column(
                  //   children: <Widget>[
                  Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/7b/dd/1b/7bdd1bc7db7fd48025d4e39a0e2f0fd8.jpg'),
                  radius: 100,
                ),
              ),
              // ],
            ),
            // ),
            buildButton()
          ],
        ),
      ),
    );
  }

  Align buildButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedbackScreen()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color(0xFF0A2472),
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Yay! We made it",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Align buildConfettiWidget(controller, double blastDirection) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        maximumSize: Size(50, 50),
        shouldLoop: false,
        confettiController: controller,
        blastDirection: blastDirection,
        blastDirectionality: BlastDirectionality.directional,
        maxBlastForce: 50, // set a lower max blast force
        minBlastForce: 8, // set a lower min blast force
        emissionFrequency: 1,
        numberOfParticles: 10, // a lot of particles at once
        gravity: 1,
      ),
    );
  }
}
