
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
        onMapCreated: ((controller){
          _onMapCreated(controller);
          addMarker("Test", _center);
        }),
      ),
      // body: Stack(
      //   children: [
      //     Column(
            
      //     )
          
      //   ],
      // ),
    );
  }
}

 addMarker(String id, LatLng center) async{
  var markerIcon = await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), "images/card.png");
  var marker = Marker(markerId: MarkerId(id),
  position: center,
  infoWindow: const InfoWindow(
    title: "CawaleICT",
    snippet: "Welcome Cawaale ICT"
  ),
  icon: markerIcon
  ); 
  //_markers[id] = Marker;
      setState(() {
        
      });
}

void setState(Null Function() param0) {
}



// class _ShowsimpleMapState extends State<ShowsimpleMap> {
//   late GoogleMapController mapController;
//   final LatLng _center = const LatLng(2.080665, 45.365411);
//   void _onMapCreated(GoogleMapController controller){
//     mapController = controller;
//   }
//   Map<String, Marker> _markers = {};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: _center, zoom: 11.89),
//         onMapCreated: ((controller) {
//             _onMapCreated(controller);
//             addMarker('test', _center);
//           }),
//        ),
//     );
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text("Maps"),
//     //   ),
//     //   body: GoogleMap(
//     //     onMapCreated: (controller) {
//     //       _onMapCreated(controller);
//     //       addMarker("test", _center);
//     //     },
//     //     markers: _markers.values.toSet(),
//     //     initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
        
//     //     ),
//     // );
//   }
  
//   addMarker(String id, LatLng location) async {
//     var markerIcon = await BitmapDescriptor.fromAssetImage(
//       const ImageConfiguration(), 
//       "assets/images/kangroo.png",);
//       var marker = Marker(markerId: MarkerId(id),
//       position: location,
//       infoWindow: const InfoWindow(
//         title: 'Title of place',
//         snippet: "Some description of the place",
//       ),
//       icon: markerIcon,);
//       _markers[id] = marker;
//       setState(() {
        
//       });
//   }
 