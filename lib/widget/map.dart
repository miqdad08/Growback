// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
//
// class MapWidget extends StatefulWidget {
//   const MapWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MapWidget> createState() => _MapWidgetState();
// }
//
// class _MapWidgetState extends State<MapWidget> {
//   var urlTemplate =
//       "https://api.mapbox.com/styles/v1/miqdad08/cla69099y001c14mjwqo0l372/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
//   var subdomains = ['a', 'b', 'c'];
//   var center = LatLng(1.329,103.846);
//   var accessToken =
//       "pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
//   var id = "mapbox.mapbox-streets-v8";
//
//
//   var startPointVisible = false;
//   var endPointVisible = true;
//
//   driverPickup() async {
//     var duration = Duration(seconds: 3);
//     Timer(duration, () {
//       setState(() {
//         endPointVisible = false;
//       });
//     });
//   }
//
//   tripOver() async {
//     var duration = Duration(seconds: 6);
//     Timer(duration, () {
//       setState(() {
//         startPointVisible = true;
//       });
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     driverPickup();
//     tripOver();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child: FlutterMap(
//         options:
//             MapOptions(center: center, zoom: 50.0, maxZoom: 16, minZoom: 6),
//         layers: [
//           TileLayerOptions(
//             subdomains: subdomains,
//             urlTemplate: urlTemplate,
//             additionalOptions: {
//               'accessToken': accessToken,
//               'id': id,
//             },
//           ),
//         ],
//       )),
//     );
//   }
// }

// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapSample extends StatefulWidget {
//   const MapSample({super.key});
//
//   @override
//   State<MapSample> createState() => MapSampleState();
// }
//
// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller = Completer();
//
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(1.329,103.846),
//     zoom: 14.4746,
//   );
//
//   static final CameraPosition _kLake =  CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(1.329,103.846),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: GoogleMap(
//         mapType: MapType.satellite,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: const Text('To the lake!'),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';



class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  Location currentLocation = Location();
  Set<Marker> _markers={};


  void getLocation() async{
    var location = await currentLocation.getLocation();
    currentLocation.onLocationChanged.listen((LocationData loc){

      _controller?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(loc.latitude ?? 0.0,loc.longitude?? 0.0),
        zoom: 19.151926040649,
      )));
      print(loc.latitude);
      print(loc.longitude);
      setState(() {
        _markers.add(Marker(markerId: const MarkerId('Home'),
            position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)
        ));
      });
    });
  }

  @override
  void initState(){
    super.initState();
    setState(() {
      getLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:GoogleMap(
          myLocationButtonEnabled: true,
          zoomControlsEnabled: false,
          initialCameraPosition:const CameraPosition(
            target: LatLng(1.329,103.846),
            zoom: 12.0,
          ),
          onMapCreated: (GoogleMapController controller){
            _controller = controller;
          },
          markers: _markers,
        ) ,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_searching,color: Colors.white,),
        onPressed: (){
          getLocation();
        },
      ),
    );
  }
}