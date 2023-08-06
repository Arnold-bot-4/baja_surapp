import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}
/*
List<Map<String, dynamic>> data = [
  {
    'id': '1',
    'globalKey': GlobalKey(),
    'position': const LatLng(37.415768808487435, -122.08440050482749),
    'widget': const CircleMarker(),
  }
];
*/
class CustomMarker {
  final LatLng position;
  final String imagePath;

  CustomMarker({required this.position, required this.imagePath});
}

class MapSampleState extends State<MapSample> {
  /*
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          _addMarker(LatLng(37.77483, -122.41942), 'San Francisco', 'This is San Francisco');
          _addMarker(LatLng(34.052235, -118.243683), 'Los Angeles', 'This is Los Angeles');
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToMexico,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions),

      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  Future _goToMexico() async{
    final GoogleMapController controller = await _controller.future;

    CameraPosition _kMexico = CameraPosition(target: LatLng(25.9973 , -111.6756),
    zoom: 7.0,
    );
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kMexico));
  }

  void _addMarker(LatLng position, String title, String snippet) async {
    final BitmapDescriptor markerIcon =
    await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(48, 48)), 'assets/images/uber.png');

    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(position.toString()),
        position: position,
        infoWindow: InfoWindow(
          title: title,
          snippet: snippet,
        ),
        icon: markerIcon,
      ));
    });
  }

  */
  late GoogleMapController mapController;
  LatLng initialLocation = const LatLng(24.1333, -110.3);
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  //final Map<String, Marker> _markers = {};
 // Set<Marker> _markers = <Marker>{};

  @override
  void initState() {
    addCustomIcon();
    //WidgetsBinding.instance.addPostFrameCallback((_) => _onBuildCompleted());
    setCustomMarkerIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(size: Size(2, 2)),
            "assets/images/mexicoflag.png")
        .then((icon) => setState(() {
              markerIcon = icon;
            }));
  }

  final List<CustomMarker> customMarkers = [
    CustomMarker(position: LatLng(24.1333, -110.3), imagePath: 'assets/images/uber.png'),
    // Agrega más marcadores personalizados aquí
  ];

  Future<BitmapDescriptor> _createCustomMarkerBitmap(String imagePath) async {
    final image = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(48, 48)),
      imagePath,
    );
    return image;
  }

  Future<List<Marker>> _createMarkers() async {
    List<Marker> markers = [];

    for (var marker in customMarkers) {
      final icon = await _createCustomMarkerBitmap(marker.imagePath);
      markers.add(
        Marker(
          markerId: MarkerId(marker.position.toString()),
          position: marker.position,
          icon: icon,
          infoWindow: InfoWindow(title: "Custom Marker"),
        ),
      );
    }

    return markers;
  }


  //BitmapDescriptor testIcon = await getCustomIcon(iconKey);
  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  void setCustomMarkerIcon(){
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration(size: Size(2,2)), "assets/images/mexicoflag.png")
        .then(
          (icon) {
        sourceIcon = icon;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

         child: GoogleMap(
           onMapCreated: (controller) {
             mapController = controller;
           },

          initialCameraPosition: CameraPosition(target: initialLocation, zoom: 10),
         /* markers: customMarkers.map((marker){
            return Marker(
              markerId: MarkerId(marker.position.toString()),
              position: marker.position,
             // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
                icon: await _createCustomMarkerBitmap(marker.imagePath),
              infoWindow: InfoWindow(title: "custom marker")
              //icon: BitmapDescriptor.fromAssetImage('asset'),
            );
          }).toSet(),  */
           //markers: Set<Marker>.of(_createMarkers()),
           markers: {
             Marker(
               markerId: MarkerId("SourceIcon"),
               icon: sourceIcon,
               position: LatLng(24.151408,-110.319537),
             )

           }
          //markers: _markers.values.toSet(),
            /*
            Marker(
              markerId: const MarkerId("marker1"),
              position: const LatLng(24.151408,  -110.319537),
              draggable: false,
              onDrag: (value){},
              icon: markerIcon,

            ),
            Marker(
              markerId: const MarkerId("marker2"),
              position: const LatLng(37.415768808487435, -122.08440050482749)
            ),
            Marker(
              markerId: const MarkerId("marker3"),
              position: const LatLng(24.1333, -110.3),
              infoWindow: InfoWindow(title: "marker3"),

            ),
            */
        ), //child: CircleMarker(),
      ),
    );
  }
/*
  Future<void> _onBuildCompleted() async {
    print("It is running");
    await Future.wait(data.map((value) async {
      Marker marker = await _generateMarkersFromWidgets(value);
      _markers[marker.markerId.value] = marker;
    }));
  }

  Future<Marker> _generateMarkersFromWidgets(
    Map<String, dynamic> data,) async {
    RenderRepaintBoundary boundary = data['globalKey']
        .currentContet
        ?.findRenderObject() as RenderRepaintBoundary;

    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );

    return Marker(
        markerId: MarkerId(data['id']),
        position: data['position'],
        icon: BitmapDescriptor.fromBytes(
          byteData!.buffer.asUint8List(),
        ));
  }

   */


}

/*


class CircleMarker extends StatelessWidget {
  const CircleMarker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.cyan,
        shape: BoxShape.circle,
      ),
    );
  }
}

class MyMarker extends StatelessWidget {
  // declare a global key and get it trough Constructor

  MyMarker(this.globalKeyMyWidget);
  final GlobalKey globalKeyMyWidget;

  @override
  Widget build(BuildContext context) {
    // wrap your widget with RepaintBoundary and
    // pass your global key to RepaintBoundary
    return RepaintBoundary(
      key: globalKeyMyWidget,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 250,
            height: 180,
            decoration:
            BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          ),
          Container(
              width: 220,
              height: 150,
              decoration:
              BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.accessibility,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    'Widget',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
*/