import 'package:covkonect/widgets/request.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:sliding_card/sliding_card.dart';
import 'package:covkonect/device_size.dart';

// import 'interview_card.dart';
class HelpRequestScreen extends StatefulWidget {
  @override
  _HelpRequestScreenState createState() => _HelpRequestScreenState();
}

class _HelpRequestScreenState extends State<HelpRequestScreen> {
  SlidingCardController controller;
  @override
  void initState() {
    super.initState();
    controller = SlidingCardController();
  }

  @override
  Widget build(BuildContext context) {
    DeviceSize().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFFBF9FF),
      appBar: AppBar(
        // backgroundColor: Color(0xFFFF7F51),
        // automaticallyImplyLeading: false,
        title: Text(
          "CovKonect",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InterviewCard(
              onTapped: () {
                if (controller.isCardSeparated == true) {
                  controller.collapseCard();
                } else {
                  controller.expandCard();
                }
              },
              slidingCardController: controller,
            )
          ],
        ),
      ),
    );
  }
}
