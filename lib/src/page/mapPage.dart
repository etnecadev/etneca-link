// import 'dart:async';

// import 'package:adaptive_theme/adaptive_theme.dart';
// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_project_template/src/page/index.dart';
// import 'package:geojson/geojson.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapPage extends StatefulWidget {
//   static const routeName = '/map';
//   const MapPage({Key? key}) : super(key: key);

//   @override
//   _MapPageState createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {
//   String dropdownValue = 'One';
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (defaultTargetPlatform == TargetPlatform.android) {
//       AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
//     }
//     var _controller = TextEditingController();

//     List<LatLng> building = [
//       LatLng(20.736717, 100.523186),
//       LatLng(6.614309807555536, 99.25868941435428),
//       LatLng(6.613762946627261, 99.26013965130872),
//       LatLng(6.613729233823868, 99.26022925125014),
//       LatLng(6.613705839932422, 99.26029022253417),
//       LatLng(6.613667301522092, 99.26038846878859),
//     ];

//     //     List<LatLng> buildingii = [
//     //   LatLng(20.736717, 100.523186),
//     //   LatLng(21.836717, 100.0),
//     //   LatLng(22.936717, 100.523186),
//     //   LatLng(23.936717, 100.523186),
//     //   LatLng(24.736717, 100.523186),
//     //   LatLng(25.336717, 100.523186),
//     // ];
//     final Set<Polyline> _campusOverlay = {};

//     _campusOverlay.add(
//       Polyline(
//         polylineId: PolylineId('Building'),
//         visible: true,
//         points: building,
//         width: 2,
//         color: Colors.red,
//       ),
//     );
//     // _campusOverlay.add(
//     //   Polyline(
//     //     polylineId: PolylineId('Building'),
//     //     visible: true,
//     //     points: building,
//     //     width: 2,
//     //     color: Colors.red,
//     //   ),
//     // );

//   // Future<void> processData() async {
//   //   // data is from http://www.naturalearthdata.com
//   //   final data = await rootBundle
//   //       .loadString('assets/railroads_of_north_america.geojson');
//   //   final geojson = GeoJson();
//   //   geojson.processedLines.listen((GeoJsonLine line) {
//   //     final color = Colors.red
//   //         .withOpacity(0.3);
//   //     setState(() => lines.add(Polyline(
//   //         width: 2, color: color, points: building, polylineId: PolylineId('Buildingii'))));
//   //   });
//   //   geojson.endSignal.listen((_) => geojson.dispose());
//   //   unawaited(geojson.parse(data, verbose: true));
//   // }

//     //     _campusOverlay.add(
//     //   Polyline(
//     //     polylineId: PolylineId('Buildingii'),
//     //     visible: true,
//     //     points: buildingii,
//     //     width: 2,
//     //     color: Colors.red,
//     //   ),
//     // );
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         leading: Center(
//           child: IconButton(
//             icon: Icon(
//               Icons.arrow_back_ios_new,
//               size: 25,
//               color: Color.fromRGBO(203, 69, 73, 1),
//             ),
//             onPressed: () {
//               // scaffoldKey.currentState?.openDrawer();
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         title: Center(
//           child: Container(
//             width: double.infinity,
//             height: 40,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(100)),
//             child: Center(
//               child: TextField(
//                 controller: _controller,
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       Icons.search,
//                       color: Color.fromRGBO(203, 69, 73, 1),
//                     ),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         Icons.clear,
//                         color: Colors.red,
//                       ),
//                       onPressed: () {
//                         _controller.clear();
//                       },
//                     ),
//                     hintText: 'Search...',
//                     hintStyle: GoogleFonts.kanit(
//                         textStyle:
//                             TextStyle(color: Color.fromRGBO(203, 69, 73, 1))),
//                     border: InputBorder.none),
//               ),
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.menu,
//               size: 30,
//               color: Color.fromRGBO(203, 69, 73, 1),
//             ),
//             onPressed: () => showDialog<String>(
//                 context: context,
//                 builder: (BuildContext context) => AlertDialog(
//                       title: const Text('เส้นแสดงเขตพื้นที่'),
//                       content: StatefulBuilder(
//                         // You need this, notice the parameters below:
//                         builder: (BuildContext context, StateSetter setState) {
//                           return DropdownButton<String>(
//                             value: dropdownValue,
//                             icon: const Icon(Icons.arrow_downward),
//                             elevation: 16,
//                             style: const TextStyle(
//                                 color: Color.fromRGBO(203, 69, 73, 1)),
//                             underline: Container(
//                               height: 2,
//                               color: Color.fromRGBO(203, 69, 73, 1),
//                             ),
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 dropdownValue = newValue!;
//                               });
//                               print(dropdownValue);
//                             },
//                             items: <String>['One', 'Two', 'Tree', 'Four']
//                                 .map<DropdownMenuItem<String>>((String value) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                           );
//                         },
//                       ),
//                       actions: <Widget>[
//                         TextButton(
//                           onPressed: () => Navigator.pop(context, 'Cancel'),
//                           child: const Text('ยกเลิก'),
//                         ),
//                         TextButton(
//                           onPressed: () => Navigator.pop(context, 'OK'),
//                           child: const Text('ตกลง'),
//                         ),
//                       ],
//                     )),
//           ),
//         ],
//       ),
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             child: GoogleMap(
//                 mapType: MapType.normal,
//                 polylines: _campusOverlay,
//                 initialCameraPosition: CameraPosition(
//                   target: LatLng(13.736717, 100.523186),
//                   zoom: 5,
//                 )),
//           ),
//           // Container(
//           //   decoration: BoxDecoration(
//           //     color: Colors.white, borderRadius: BorderRadius.circular(25)),
//           //   width: 400,
//           //   height: 600,
//           //   child: Column(children: [
//           //   ]),
//           // )
//           // Center(
//           //   child: Column(
//           //     mainAxisAlignment: MainAxisAlignment.center,
//           //     children: [
//           //       ElevatedButton(
//           //         onPressed: () => AdaptiveTheme.of(context).setDark(),
//           //         child: Text('Set Dark'),
//           //         style: ElevatedButton.styleFrom(
//           //           visualDensity: VisualDensity(horizontal: 4, vertical: 2),
//           //         ),
//           //       ),
//           //       SizedBox(height: 8),
//           //       ElevatedButton(
//           //         onPressed: () => AdaptiveTheme.of(context).setLight(),
//           //         child: Text('set Light'),
//           //         style: ElevatedButton.styleFrom(
//           //           visualDensity: VisualDensity(horizontal: 4, vertical: 2),
//           //         ),
//           //       ),
//         ],
//       ),
//       // )
//       //   ],
//       // ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geopoint/geopoint.dart';
import 'package:pedantic/pedantic.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_map/flutter_map.dart';
import 'package:geojson/geojson.dart';
import 'package:latlong2/latlong.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class _MapPageState extends State<MapPage> {
  // final Set<Polyline> _campusOverlay = {};
  var lines = <Polyline>[];
  var polygons = <Polygon>[];
  String dropdownValue = 'None';
  String polylineValue = 'assets/geoJson/buffer05_final.geojson';
  String polygonValue = 'assets/geoJson/marine_NPRK_1984.geojson';
  var _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  Future<void> processDataline() async {
    // data is from http://www.naturalearthdata.com
    final data = await rootBundle.loadString(polylineValue);
    final geojson = GeoJson();
    geojson.processedLines.listen((GeoJsonLine line) {
      setState(() => lines.add(Polyline(
          strokeWidth: 2,
          color: Colors.red,
          points: line.geoSerie!.toLatLng())));
    });
    geojson.endSignal.listen((_) => geojson.dispose());
    unawaited(geojson.parse(data, verbose: true));
  }

  Future<void> processDatapolygon() async {
    final geojson = GeoJson();
    geojson.processedMultiPolygons.listen((GeoJsonMultiPolygon multiPolygon) {
      for (final polygon in multiPolygon.polygons) {
        final geoSerie = GeoSerie(
            type: GeoSerieType.polygon,
            name: polygon.geoSeries[0].name,
            geoPoints: <GeoPoint>[]);
        for (final serie in polygon.geoSeries) {
          if (serie.geoPoints != null) {
            geoSerie.geoPoints.addAll(serie.geoPoints);
          }
        }
        final poly = Polygon(
            points: geoSerie.toLatLng(ignoreErrors: true), color: Colors.blue);
        setState(() => polygons.add(poly));
        print(geoSerie.name);
      }
    });
    geojson.endSignal.listen((bool _) => geojson.dispose());
    // The data is from https://datahub.io/core/geo-countries
    final data = await rootBundle.loadString(polygonValue);
    var geo = jsonDecode(data.trim());
    // print(geo['features'][0]['geometry']['type']);
    final nameProperty = "ADMIN";
    unawaited(geojson.parse(data, nameProperty: nameProperty, verbose: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Center(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 25,
                color: Color.fromRGBO(203, 69, 73, 1),
              ),
              onPressed: () {
                // scaffoldKey.currentState?.openDrawer();
                Navigator.pop(context);
              },
            ),
          ),
          title: Center(
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(203, 69, 73, 1),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          _controller.clear();
                        },
                      ),
                      hintText: 'Search...',
                      hintStyle: GoogleFonts.kanit(
                          textStyle:
                              TextStyle(color: Color.fromRGBO(203, 69, 73, 1))),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Color.fromRGBO(203, 69, 73, 1),
              ),
              onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('เส้นแสดงเขตพื้นที่'),
                        content: StatefulBuilder(
                          // You need this, notice the parameters below:
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: const TextStyle(
                                  color: Color.fromRGBO(203, 69, 73, 1)),
                              underline: Container(
                                height: 2,
                                color: Color.fromRGBO(203, 69, 73, 1),
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                  switch (dropdownValue) {
                                    case 'None':
                                      lines = [];
                                      polygons = [];
                                      break;
                                    case 'Polyline':
                                      polygons = [];
                                      polylineValue =
                                          'assets/geoJson/buffer05_final.geojson';
                                      processDataline();
                                      break;
                                    case 'Polygon':
                                      lines = [];
                                      polygonValue =
                                          'assets/geoJson/marine_NPRK_1984.geojson';
                                      processDatapolygon();
                                      break;

                                    default:
                                  }
                                });

                                // print(dropdownValue);
                                Navigator.pop(context, 'back');
                              },
                              items: <String>[
                                'None',
                                'Polyline',
                                'Polygon',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            );
                          },
                        ),
                        // actions: <Widget>[
                        //   TextButton(
                        //     onPressed: () => Navigator.pop(context, 'Cancel'),
                        //     child: const Text('ยกเลิก'),
                        //   ),
                        //   TextButton(
                        //     onPressed: () {
                        //       setState(() {
                        //         switch (dropdownValue) {
                        //           case 'None':
                        //             lines = [];
                        //             polygons = [];
                        //             break;
                        //           case 'Polyline':
                        //             polygons = [];
                        //             polylineValue =
                        //                 'assets/geoJson/buffer05_final.geojson';
                        //             processDataline();
                        //             break;
                        //           case 'Polygon':
                        //             lines = [];
                        //             polygonValue =
                        //                 'assets/geoJson/marine_NPRK_1984.geojson';
                        //             processDatapolygon();
                        //             break;

                        //           default:
                        //         }
                        //       });
                        //       print(polylineValue);
                        //       Navigator.pop(context, 'Ok');
                        //     },
                        //     child: const Text('ตกลง'),
                        //   ),
                        // ],
                      )),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: FlutterMap(
          mapController: MapController(),
          options: MapOptions(
            center: LatLng(10.736717, 100.523186),
            zoom: 6.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            PolylineLayerOptions(polylines: lines),
            PolygonLayerOptions(
              polygons: polygons,
            ),
          ],
        ));
  }
}

class MapPage extends StatefulWidget {
  static const routeName = '/map';
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}
