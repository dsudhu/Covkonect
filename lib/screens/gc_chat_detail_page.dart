// import 'package:camera_platform_interface/src/types/camera_description.dart';

import 'package:covkonect/models/gc_chat_message.dart';
import 'package:covkonect/screens/gc_add_participants_screen.dart';
import 'package:covkonect/screens/gc_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:covkonect/screens/gc_message.dart';

import 'gc_main_page_screen.dart';

class ChatDetailPage extends StatefulWidget {
  // ChatDetailPage(List<CameraDescription> cameras);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFF7F51),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                // CircleAvatar(
                //   backgroundColor: HexColor('#FF8E2B'),
                //     child: Icon(Icons.people_outline_rounded, color: Colors.blue, size: 30, ),
                //   ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CovKonect",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.people,
                          color: Color(0xFF0A2472),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatsScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Color(0xFF0A2472),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddPart(),
                            ),
                          );
                        },
                      ),
                    ),
                    // FloatingActionButton(
                    //   onPressed: (){
                    //   },
                    //   child: Icon(Icons.people,color: Colors.black54,),),
                    // SizedBox(width: 10), // give it width
                    // FloatingActionButton(
                    //     onPressed: (){
                    //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Body()),);
                    //     },
                    //     child: Icon(Icons.add,color: Colors.black54,size:40),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Container(
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Text(
                  'Group Chat',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, bottom: 10, top: 30),
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListView.builder(
                      itemCount: demeChatMessages.length,
                      itemBuilder: (context, index) =>
                          Message(message: demeChatMessages[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: new OutlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.orange, width: 5),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                  FloatingActionButton(
                      onPressed: _picker, child: const Icon(Icons.add_link)),
                  FloatingActionButton(
                    onPressed: () {
                      navigateToSubPage(context);
                    },
                    child: const Icon(Icons.camera_alt),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _picker() async {
    final PickedFile pick =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {});
    }
  }
}
