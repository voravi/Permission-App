// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class LocationScreen extends StatefulWidget {
//   const LocationScreen({Key? key}) : super(key: key);
//
//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }
//
// class _LocationScreenState extends State<LocationScreen> {
//   late GoogleMapController mapController;
//
//   double latitude = 0;
//   double longitude = 0;
//   Placemark? placeMark;
//
//   TextEditingController controller = TextEditingController();
//
//   void onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   latLonFinder() async {
//     PermissionStatus permissionStatus = await Permission.location.request();
//     print(permissionStatus);
//
//     Geolocator.getPositionStream().listen(
//       (event) {
//         setState(() {
//           latitude = event.latitude;
//           longitude = event.longitude;
//         });
//         controller.text = "$latitude/$longitude";
//         print("==============================================");
//         print("==============================================");
//         print("==============================================");
//         print(latitude);
//         print(longitude);
//         print(controller.text);
//         print("==============================================");
//         print("==============================================");
//       },
//     );
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     latLonFinder();
//     controller.text = "$latitude/$longitude";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text(
//           "Location Screen",
//         ),
//       ),
//       body: GoogleMap(
//         onMapCreated: onMapCreated,
//         initialCameraPosition: CameraPosition(
//           zoom: 4,
//           target: LatLng(latitude, longitude),
//         ),
//         markers: {
//           Marker(
//             markerId: MarkerId("source"),
//             position: Position(latitude: ),
//           ),
//         },
//       ),
//     );
//   }
// }
//
// /*
//
//
//
//
//
// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             SizedBox(
//               height: 80,
//               width: 250,
//               child: TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                   hintText: "LAT/LON",
//                   labelText: "Enter lat/lon",
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             Text(
//               "$latitude / $longitude",
//               style: TextStyle(fontSize: 18),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 PermissionStatus permissionStatus =
//                 await Permission.location.request();
//                 print(permissionStatus);
//
//                 // Position position = await Geolocator.getCurrentPosition();
//                 //
//                 // print(position);
//
//                 Geolocator.getPositionStream().listen(
//                       (event) {
//                     setState(() {
//                       latitude = event.latitude;
//                       longitude = event.longitude;
//                     });
//                   },
//                 );
//
//               },
//               child: Text("Find State"),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextButton(
//               onPressed: () async {
//                 List<Placemark> placeMarks =
//                 await placemarkFromCoordinates(latitude, longitude);
//                 setState(() {
//                   placeMark = placeMarks[0];
//                 });
//               },
//               child: Text(
//                 "Find Nearest Area",
//                 style: TextStyle(
//                   color: Colors.blueAccent,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   decoration: TextDecoration.underline,
//                 ),
//               ),
//             ),
//             Text("$placeMark"),
//
//           ],
//         ),
//       ),
//
//
//
//
//
//
//
// Column(
//         children: [
//           Row(
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                 child: SizedBox(
//                   height: 80,
//                   width: 250,
//                   child: TextField(
//                     controller: controller,
//                     decoration: InputDecoration(
//                       hintText: "LAT/LON",
//                       labelText: "Enter lat/lon",
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       shape: const StadiumBorder(),
//                       padding: const EdgeInsets.only(
//                         top: 15,
//                         bottom: 15,
//                         left: 35,
//                         right: 35,
//                       ),
//                     ),
//                     child: const Center(
//                       child: Text("GO"),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 18,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 500,
//             width: 300,
//             child: GoogleMap(
//               onMapCreated: onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 zoom: 4,
//                 target: LatLng(latitude, longitude),
//               ),
//             ),
//           ),
//         ],
//       ),
//
//
//
// * */
