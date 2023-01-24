// import 'package:covkonect/models/Chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget{
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SidebarScreen()),
            // );
          },
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Color(0xFF0A2472),
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/Covkonect_appbar.png',
          width: 250,
          height: 70,
        ),
        actions: [
          IconButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       // MaterialPageRoute(builder: (context) => ProfilePage()),
            //     );
            //   },
            icon: Icon(Icons.person),
            iconSize: 30,
            color: Color(0xFF0A2472), onPressed: () {  },
          ),
        ],
        backgroundColor: Color(0xFFFF7F51),
      ),
     body:   Container(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child:
              Image.asset(
                'assets/images/doc.jpg',
                height: 200.0,
                width: itemWidth,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(12.0),
              child:  Text(
                "When to consult Doctor?",
                style:  TextStyle(
                    fontSize: 28.0,
                    color: Color(0xFF0A2472),
                    fontWeight: FontWeight.w600),
              ),
            ),
             Expanded(
              flex: 1,
              child:  SingleChildScrollView(
                scrollDirection: Axis.vertical,//.horizontal
                padding: const EdgeInsets.all(12.0),
                child:  Text(
                    '''The symptoms that are an alarm bell that the patient will require instant professional assistance.

1. If your oxygen saturation dips below 90 percent. Signs like experiencing breathlessness despite resting, having difficulty in speaking, inability to walk across a room and dip in oxygen level despite the supply of O2 are all red flags that the patient needs to be admitted to a hospital as soon as possible.

2. Persistent fever for 5 to 7 days. It is normal to get fever while you are down with COVID but if your fever is persistent for more than 5 days then you should immediately consult your doctor.

3. Severe vomiting or diarrhea. If you have severe diarrhea and vomiting then your body is losing essential fluids and you might require an IV bottle injection in your body.

4. Difficulty speaking. This is a severe symptom and needs immediate assistance.

5. Confusion or sudden change in mental status. If a patient is acting delirious and speaking nonsensically, take them to the nearby COVID hospital.

6. Extreme sleepiness or inability to wake. If a COVID patient fatigue is so severe that they are unable to stay awake, then they need to be admitted to a hospital.

Prevention is better than cure. To avoid such a situation to arise - practice social distancing, avoid unnecessarily stepping out from your homes, wear a mask, get vaccinated and report at the earliest if you get any COVID symptoms and self-isolate yourself.,''',
                  style:  TextStyle(
                    fontSize: 16.0, color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
    ),
    );
    }
  }