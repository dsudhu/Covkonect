import 'package:covkonect/screens/map_view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

import 'package:covkonect/screens/map_view_screen.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
                'assets/Covkonect_appbar.png',
              ),
            ),
          ),
          Text(
            'Did you receive your items?',
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
                  _showRatingAppDialog();
                },
                child: Text('YES'),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapViewScreen()),
                  );
                },
                child: Text('NO'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showRatingAppDialog() {
    final _ratingDialog = RatingDialog(
      ratingColor: Color(0xFFFF7F51),
      title: 'Feedback',
      message: 'Your feedback is valuable to us.',
      image: Image.asset(
        "assets/Covkonect_appbar.png",
        height: 50,
        width: 80,
      ),
      submitButton: 'Submit',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MapViewScreen()),
        );

        if (response.rating < 3.0) {
          print('response.rating: ${response.rating}');
        } else {
          Container();
        }
      },
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _ratingDialog,
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
