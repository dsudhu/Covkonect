import 'package:flutter/material.dart';
import 'package:covkonect/components/gc_body.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Participants"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
