import 'dart:async';
import 'package:covkonect/screens/auth_screen.dart';
import 'package:covkonect/screens/gc_main_page_screen.dart';
import 'package:covkonect/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:covkonect/screens/list_view_screen.dart';

class MapViewScreen extends StatefulWidget {
  @override
  _MapViewScreenState createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {
  Completer<GoogleMapController> _controller = Completer();
  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            icon: Icon(Icons.person),
            iconSize: 30,
            color: Color(0xFF0A2472),
          ),
        ],
        backgroundColor: Color(0xFFFF7F51),
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _switchContainer(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _switchContainer() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 150,
        height: 50,
        child: ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListViewScreen()),
            );
          },
          child: Text('Switch to list view'),
        ),
      ),
    );
  }

  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchMinus, color: Color(0xFF0A2472)),
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchPlus, color: Color(0xFF0A2472)),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(17.4875, 78.3953), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(17.5389, 78.3863), zoom: zoomVal)));
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(17.4834, 78.3871, "Sanju Reddy"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(17.5186, 78.3963, "Sara Sharma"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(17.4834, 78.3871, "V Baby"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(double lat, double long, String houseName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Container(
                  //   width: 180,
                  //   height: 200,
                  //   child: ClipRRect(
                  //     borderRadius: new BorderRadius.circular(24.0),
                  //     // child:
                  //     // Image(
                  //     //   fit: BoxFit.fill,
                  //     //   image: AssetImage(_image),
                  //     // ),
                  //   ),
                  // ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(houseName),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String houseName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              houseName,
              style: TextStyle(
                  color: Color(0xFF0A2472),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Text(
              "4.1",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(9)",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "2 Km Away",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        )),
        SizedBox(height: 5.0),
        Container(
            child: ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GcScreen()),
            );
          },
          child: Text('Reqest Help'),
        )),
        //   Text(
        // "Closed \u00B7 Opens 17:00 Thu",
        // style: TextStyle(
        //     color: Colors.black54,
        //     fontSize: 18.0,
        //     fontWeight: FontWeight.bold),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(17.4875, 78.3953), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          kukatpally1Marker,
          kukatpally2Marker,
          kukatpally3Marker,
          SanjuMarker,
          SaraMarker,
          BabyMarker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}

Marker SanjuMarker = Marker(
  markerId: MarkerId('Sanju House'),
  position: LatLng(17.4875, 78.3953),
  infoWindow: InfoWindow(title: 'Sanju Reddy'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueBlue,
  ),
);

Marker SaraMarker = Marker(
  markerId: MarkerId('Sara Sharma'),
  position: LatLng(
    17.5186,
    78.3963,
  ),
  infoWindow: InfoWindow(title: 'Sara Sharma'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueBlue,
  ),
);
Marker BabyMarker = Marker(
  markerId: MarkerId('V Baby'),
  position: LatLng(17.5174, 78.3870),
  infoWindow: InfoWindow(title: 'Baby House'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueBlue,
  ),
);

// Kukatpally Marker

Marker kukatpally1Marker = Marker(
  markerId: MarkerId('kukatpally1'),
  position: LatLng(17.4860, 78.3953),
  infoWindow: InfoWindow(title: 'Kukatpally'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueBlue,
  ),
);
Marker kukatpally2Marker = Marker(
  markerId: MarkerId('kukatpally2'),
  position: LatLng(17.5186, 78.3963),
  infoWindow: InfoWindow(title: 'Kukatpally'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueBlue,
  ),
);
Marker kukatpally3Marker = Marker(
  markerId: MarkerId('kukatpally3'),
  position: LatLng(17.5171, 78.3831),
  infoWindow: InfoWindow(title: 'Kukatpally'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueBlue,
  ),
);
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Color(0xFFFBF9FF),
  primary: Color(0xFF0A2472),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 8),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
