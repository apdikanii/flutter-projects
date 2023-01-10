
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMap extends StatefulWidget {
  const SimpleMap({super.key});

  @override
  State<SimpleMap> createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  late GoogleMapController mapController;
    Map<String, Marker> _markers = {};
    final LatLng _center = const LatLng(2.764392, 45.736084);
    void _onMapCreated(GoogleMapController controller){
      mapController = controller;
    }



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Maps"),
      // ),
      body: Stack(
        children: [
          Container(
          child: GoogleMap(
            onMapCreated: (controller) {
              _onMapCreated(controller);
              addMarker("test", _center);
            },
            markers: _markers.values.toSet(),
            initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
            
            ),
        ),
        ],
      ),
    );
  }
  
  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(), 
      "assets/images/kangroo.png",);
      var marker = Marker(markerId: MarkerId(id),
      position: location,
      infoWindow: const InfoWindow(
        title: 'Title of place',
        snippet: "Some description of the place",
      ),
      icon: markerIcon,);
      _markers[id] = marker;
      setState(() {
        
      });
  }
}