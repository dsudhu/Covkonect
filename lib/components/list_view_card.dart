import 'package:covkonect/screens/gc_main_page_screen.dart';
import 'package:covkonect/screens/overlay_plain_screen.dart';
import 'package:covkonect/screens/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListViewCard extends StatefulWidget {
  @override
  _ListViewCardState createState() => _ListViewCardState();
}

class _ListViewCardState extends State<ListViewCard> {
  int _currentIndex = 0;

  List cardList = [
    Item1(),
    Item2(),
    Item3(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: 195.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.blueAccent,
                  child: card,
                ),
              );
            });
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Container(
              width: 10.0,
              height: 5.0,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
              ),
            );
          }),
        ),
      ],
    ));
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.account_box_outlined),
            title: Text('Name'),
            subtitle: Text('Dilip Vanamali'),
          ),
          const ListTile(
            leading: Icon(Icons.add_location_alt_outlined),
            title: Text('Address'),
            subtitle: Text('H.No:2-11-149\nKukatpally'),
          ),
          TextButton(
            child: Text('Request Help', style: TextStyle(fontSize: 13)),
            style: ButtonStyle(
                // padding: MaterialStateProperty.all<EdgeInsets>(
                //     EdgeInsets.all(15)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF0A2472)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.blue)))),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StackDemo()),
            ),
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.account_box_outlined,
              color: Color(0xFFFBF9FF),
            ),
            title: Text(
              'Name',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
            subtitle: Text(
              'Neeraj Mullapudi',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.add_location_alt_outlined,
              color: Color(0xFFFBF9FF),
            ),
            title: Text(
              'Address',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
            subtitle: Text(
              'H.No:2-11-149\nKukatpally',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
          ),
          TextButton(
            child: Text('Request Help', style: TextStyle(fontSize: 13)),
            style: ButtonStyle(
                // padding: MaterialStateProperty.all<EdgeInsets>(
                //     EdgeInsets.all(15)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF0A2472)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Color(0xFFFBF9FF))))),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StackDemo()),
            ),
          ),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.account_box_outlined,
              color: Color(0xFFFBF9FF),
            ),
            title: Text(
              'Name',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
            subtitle: Text(
              'Neeraj Mullapudi',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.add_location_alt_outlined,
              color: Color(0xFFFBF9FF),
            ),
            title: Text(
              'Address',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
            subtitle: Text(
              'H.No:2-11-149\nKukatpally',
              style: TextStyle(
                color: Color(0xFFFBF9FF),
              ),
            ),
          ),
          TextButton(
            child: Text('Request Help', style: TextStyle(fontSize: 13)),
            style: ButtonStyle(
                // padding: MaterialStateProperty.all<EdgeInsets>(
                //     EdgeInsets.all(15)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF0A2472)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Color(0xFFFBF9FF))))),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StackDemo()),
            ),
          ),
        ],
      ),
    );
  }
}
