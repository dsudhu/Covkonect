import 'package:covkonect/screens/help_request_screen.dart';
import 'package:flutter/material.dart';

import 'screens/main_logo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covkonect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LogoPage(),
    );
  }
}
