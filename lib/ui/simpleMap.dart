
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMap extends StatefulWidget {
  const SimpleMap({super.key});

  @override
  State<SimpleMap> createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(2.764392, 45.736084);
  final Map<String, Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: _markers.values.toSet(),
        initialCameraPosition: CameraPosition(
        target: _center, zoom: 10.0),
        onMapCreated: (controller){
          _onMapCreated(controller);
          addMarker("Test", _center);
        },
      ),
    );
  }
}

  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(), 
      "images/kangrooicon.png",);
      var marker = Marker(markerId: MarkerId(id),
      position: location,
      infoWindow: const InfoWindow(
        title: 'Title of place',
        snippet: "Some description of the place",
      ),
      icon: markerIcon,);
      var _markers;
      _markers (marker);
      setState(() {
      });
}

void setState(Null Function() param0) {
}
