import 'dart:async';

import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:covkonect/screens/gc_camera_example_home.dart';
import 'package:covkonect/screens/gc_chat_detail_page.dart';

List<CameraDescription> cameras = [];
Future<void> main_1() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    // logError(e.code, e.description);
  }
  // runApp(MyApp());
}

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CameraApp()));
}

class GcScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CovKonect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ChatDetailPage(),
    );
  }
}
