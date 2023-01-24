import 'package:flutter/material.dart';
import 'package:covkonect/components/gc_body_add.dart';

class AddPart extends StatefulWidget {
  @override
  _AddPartState createState() => _AddPartState();
}

class _AddPartState extends State<AddPart> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyAdd(),
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
