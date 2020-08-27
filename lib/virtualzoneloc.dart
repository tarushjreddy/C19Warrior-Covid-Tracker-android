import 'dart:collection';

import 'package:location/location.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMaptwo extends StatefulWidget {
  @override
  _GMaptwoState createState() => _GMaptwoState();
}

class _GMaptwoState extends State<GMaptwo> {
  BitmapDescriptor customIcon;
  Set<Marker> markers;

  LatLng _initialPostion = LatLng(12.9063, 77.5857);
  Location _location = Location();

  Set<Marker> _marker = HashSet<Marker>();
  // Set<Polygon> _polygons = HashSet<Polygon>();
  // Set<Polyline> _polylines = HashSet<Polyline>();
  Set<Circle> _circles = HashSet<Circle>();
  // bool _showMapStyle = false;

  GoogleMapController _mapController;
  BitmapDescriptor _markerIcon;

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/images/noodle_icon.png');
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
          circleId: CircleId("1"),
          center: LatLng(12.9063, 77.5857),
          radius: 1000,
          strokeColor: Colors.red,
          strokeWidth: 1,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("2"),
          center: LatLng(13.035770, 77.597023),
          radius: 1000,
          strokeColor: Colors.red,
          strokeWidth: 1,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("3"),
          center: LatLng(13.100485, 77.594009),
          radius: 500,
          strokeWidth: 1,
          fillColor: Colors.purple.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("4"),
          center: LatLng(25.317644, 82.973915),
          radius: 10000,
          strokeWidth: 1,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("5"),
          center: LatLng(16.963070, 81.251801),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("6"),
          center: LatLng(13.021090, 77.696930),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("7"),
          center: LatLng(12.976750, 77.575280),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("8"),
          center: LatLng(21.170240, 72.831062),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.orange,
          fillColor: Colors.orange.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("9"),
          center: LatLng(28.704060, 77.102493),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );

    _circles.add(
      Circle(
          circleId: CircleId("10"),
          center: LatLng(17.385044, 78.486671),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("11"),
          center: LatLng(13.082680, 80.270721),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.purple,
          fillColor: Colors.purple.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("12"),
          center: LatLng(26.912434, 75.787270),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("13"),
          center: LatLng(24.585445, 73.712479),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("14"),
          center: LatLng(19.075983, 72.877655),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.purple,
          fillColor: Colors.purple.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("15"),
          center: LatLng(15.139393, 76.921440),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("16"),
          center: LatLng(26.846695, 26.846695),
          radius: 5000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("17"),
          center: LatLng(16.781549, 77.798714),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("18"),
          center: LatLng(12.295810, 76.639381),
          radius: 2000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("19"),
          center: LatLng(10.850516, 76.271080),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("20"),
          center: LatLng(22.973423, 78.656891),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("21"),
          center: LatLng(24.076651, 69.539482),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("22"),
          center: LatLng(14.954073, 76.539001),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("23"),
          center: LatLng(23.079732, 71.982422),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.orange,
          fillColor: Colors.orange.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("24"),
          center: LatLng(23.160563, 77.211914),
          radius: 10000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("25"),
          center: LatLng(12.975118, 77.642441),
          radius: 500,
          strokeWidth: 1,
          strokeColor: Colors.purple,
          fillColor: Colors.purple.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("26"),
          center: LatLng(12.986493, 77.603302),
          radius: 500,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("27"),
          center: LatLng(12.955713, 77.599010),
          radius: 500,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("28"),
          center: LatLng(12.906860, 77.550430),
          radius: 500,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("29"),
          center: LatLng(12.932961, 77.621155),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.red,
          fillColor: Colors.red.withAlpha(100)),
    );
    _circles.add(
      Circle(
          circleId: CircleId("30"),
          center: LatLng(12.913385, 77.619953),
          radius: 1000,
          strokeWidth: 1,
          strokeColor: Colors.purple,
          fillColor: Colors.purple.withAlpha(100)),
    );
  }

  @override
  void initState() {
    super.initState();
    // _setMarkerIcon();
    // _setPolygons();
    // _setPolylines();
    _setCircles();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _location.onLocationChanged.listen((l) {
      _mapController
          .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(l.latitude, l.longitude),
        zoom: 50,
      )));
    });
    setState(() {
      _marker.add(Marker(
        markerId: MarkerId("1"),
        position: LatLng(12.9063, 77.5857),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "J.P. Nagar",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("2"),
        position: LatLng(13.035770, 77.597023),
        infoWindow: InfoWindow(
          title: "Alert it is an orange zone",
          snippet: "Hebbal",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("3"),
        position: LatLng(13.100485, 77.594009),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Yelahanka",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("4"),
        position: LatLng(25.317644, 82.973915),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Varanasi",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("5"),
        position: LatLng(16.963070, 81.251801),
        infoWindow: InfoWindow(
          title: "Alert it is an Containment zone",
          snippet: "Malleshwaram",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("6"),
        position: LatLng(13.021090, 77.696930),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Kr Puram",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("7"),
        position: LatLng(12.976750, 77.575280),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Mejestic",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("8"),
        position: LatLng(21.170240, 72.831062),
        infoWindow: InfoWindow(
          title: "Alert it is an orange zone",
          snippet: "Surat",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("9"),
        position: LatLng(28.704060, 77.102493),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Delhi",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("10"),
        position: LatLng(17.385044, 78.486671),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Hyderabad",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("11"),
        position: LatLng(13.082680, 80.270721),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Containment zone",
          snippet: "Chennai",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("12"),
        position: LatLng(26.912434, 75.787270),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Jaipur",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("13"),
        position: LatLng(24.585445, 73.712479),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "Udaipur",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("14"),
        position: LatLng(19.075983, 72.877655),
        infoWindow: InfoWindow(
          title: "Alert it is an Containment zone",
          snippet: "Mumbai",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("15"),
        position: LatLng(15.139393, 76.921440),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "bellary",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("LatLng(15.139393, 76.921440),"),
        position: LatLng(26.846695, 26.846695),
        infoWindow: InfoWindow(
          title: "Alert it is an containment zone",
          snippet: "lucknow",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("17"),
        position: LatLng(16.781549, 77.798714),
        infoWindow: InfoWindow(
          title: "Alert it is an red zone",
          snippet: "anathapur",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("18"),
        position: LatLng(12.295810, 76.639381),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "mysore",
        ),
      ));

      _marker.add(Marker(
        markerId: MarkerId("19"),
        position: LatLng(10.850516, 76.271080),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "tiruvanathapuram",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("20"),
        position: LatLng(22.973423, 78.656891),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "madhya pradesh",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("21"),
        position: LatLng(24.076651, 69.539482),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "kutch",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("22"),
        position: LatLng(14.954073, 76.539001),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "bellary",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("23"),
        position: LatLng(23.079732, 71.982422),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Ahemdabad",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("24"),
        position: LatLng(23.160563, 77.211914),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Bhopal",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("25"),
        position: LatLng(12.975118, 77.642441),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Indranaga",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("26"),
        position: LatLng(12.986493, 77.603302),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Shivajinagra",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("27"),
        position: LatLng(12.955713, 77.599010),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Shatinagar",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("28"),
        position: LatLng(12.906860, 77.550430),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Kumar swamy layot",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("29"),
        position: LatLng(12.932961, 77.621155),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "Koramangala",
        ),
      ));
      _marker.add(Marker(
        markerId: MarkerId("30"),
        position: LatLng(12.913385, 77.619953),
        infoWindow: InfoWindow(
          title: "Please be carefull you are in Red zone",
          snippet: "btm and bommanahalli",
        ),
      ));

      // _marker.add(Marker(
      //     markerId: MarkerId("1"),
      //     position: LatLng(12.9063, 77.5857),
      //     infoWindow: InfoWindow(
      //       title: "Please be carefull you are in Red zone",
      //       snippet: "J.P. Nagar",
      //     ),
      //     icon: _markerIcon));

      // _setCircles();
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
            //   options: GoogleMapOptions(
            //   scrollGesturesEnabled: true,
            //   tiltGesturesEnabled: true,
            //   rotateGesturesEnabled: true,
            //   myLocationEnabled: true,
            //   compassEnabled: true,
            //   cameraPosition: CameraPosition(
            //     target: _center,
            //     zoom: 11.0,
            //   ),
            // ),
            myLocationButtonEnabled: true,
            initialCameraPosition: CameraPosition(
              target: _initialPostion,
            ),
            scrollGesturesEnabled: true,
            tiltGesturesEnabled: true,
            rotateGesturesEnabled: true,
            zoomControlsEnabled: true,
            compassEnabled: true,

            onMapCreated: _onMapCreated,
            markers: _marker,
            mapType: MapType.normal,
            // polygons: _polygons,
            // polylines: _polylines,
            circles: _circles,

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
