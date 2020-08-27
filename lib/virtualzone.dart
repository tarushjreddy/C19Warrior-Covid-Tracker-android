import 'dart:collection';

import 'package:location/location.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget {
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  BitmapDescriptor customIcon;
  Set<Marker> markers;

  LatLng _initialPostion = LatLng(12.9063, 77.5857);
  Location _location = Location();

  Set<Marker> _markers = HashSet<Marker>();
  // Set<Polygon> _polygons = HashSet<Polygon>();
  // Set<Polyline> _polylines = HashSet<Polyline>();
  Set<Circle> _circles = HashSet<Circle>();
  // bool _showMapStyle = false;

  GoogleMapController _mapController;
  BitmapDescriptor _markerIcon;

  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
    // _setPolygons();
    // _setPolylines();
    _setCircles();
  }

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/icons8-coronavirus-64.png');
  }

  // void _toggleMapStyle() async {
  //   String style = await DefaultAssetBundle.of(context)
  //       .loadString('assets/map_style.json');

  //   if (_showMapStyle) {
  //     _mapController.setMapStyle(style);
  //   } else {
  //     _mapController.setMapStyle(null);
  //   }
  // }

  // void _setPolygons() {
  //   List<LatLng> polygonLatLongs = List<LatLng>();
  //   polygonLatLongs.add(LatLng(37.78493, -122.42932));
  //   polygonLatLongs.add(LatLng(37.78693, -122.41942));
  //   polygonLatLongs.add(LatLng(37.78923, -122.41542));
  //   polygonLatLongs.add(LatLng(37.78923, -122.42582));

  //   _polygons.add(
  //     Polygon(
  //       polygonId: PolygonId("0"),
  //       points: polygonLatLongs,
  //       fillColor: Colors.white,
  //       strokeWidth: 1,ma
  //     ),
  //   );
  // }

  // void _setPolylines() {
  //   List<LatLng> polylineLatLongs = List<LatLng>();
  //   polylineLatLongs.add(LatLng(37.74493, -122.42932));
  //   polylineLatLongs.add(LatLng(37.74693, -122.41942));
  //   polylineLatLongs.add(LatLng(37.74923, -122.41542));
  //   polylineLatLongs.add(LatLng(37.74923, -122.42582));

  //   _polylines.add(
  //     Polyline(
  //       polylineId: PolylineId("0"),
  //       points: polylineLatLongs,
  //       color: Colors.purple,
  //       width: 1,
  //     ),
  //   );
  // }

  void _setCircles() {
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(12.9063, 77.5857),
          radius: 1000,
          strokeColor: Colors.red,
          strokeWidth: 2,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(
            12.9308,
            77.5838,
          ),
          radius: 2000,
          strokeWidth: 2,
          fillColor: Colors.red),
    );
    _circles.add(
      Circle(
          circleId: CircleId("Thanisandra"),
          center: LatLng(
            13.056865,
            77.623528,
          ),
          radius: 10000,
          strokeWidth: 1,
          fillColor: Colors.purple.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("Hebbaleast"),
          center: LatLng(
            13.035770,
            77.597023,
          ),
          radius: 10000,
          strokeWidth: 2,
          fillColor: Colors.purple.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(
            12.9308,
            77.5838,
          ),
          radius: 1000,
          strokeWidth: 2,
          fillColor: Colors.red),
    );
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(
            12.9308,
            77.5838,
          ),
          radius: 1000,
          strokeWidth: 2,
          fillColor: Colors.red),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _location.onLocationChanged.listen((l) {
      _mapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 90)));
    });
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("mymarker"),
          position: LatLng(12.9063, 77.5857),
          // infoWindow: InfoWindow(
          //   title: "Please be carefull you are in Red zone",
          //   snippet: "J.P. Nagar",
          // ),
        ),
      );
      _markers.add(Marker(
          markerId: MarkerId("1"),
          position: LatLng(12.9063, 77.5857),
          infoWindow: InfoWindow(
            title: "Please be carefull you are in Red zone",
            snippet: "J.P. Nagar",
          ),
          icon: _markerIcon));

      _setCircles();
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPostion,
            ),
            onMapCreated: _onMapCreated,
            // markers: _markers,
            // polygons: _polygons,
            // polylines: _polylines,
            circles: _circles,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
          ),
          // Material(
          //   child: Container(
          //     alignment: Alignment.bottomCenter,
          //     padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
          //     child: Text("Coding with Curry"),
          //   ),
          // )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Increment',
      //   child: Icon(Icons.map),
      //   onPressed: () {
      //     setState(() {
      //       _showMapStyle = !_showMapStyle;
      //     });

      //     _toggleMapStyle();
      //   },
      // ),
    );
  }
}
