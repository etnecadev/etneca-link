import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/page/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  static const routeName = '/map';
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String dropdownValue = 'One';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    var _controller = TextEditingController();
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
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
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
                        builder: (BuildContext context, StateSetter setState) {
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
                              });
                              print(dropdownValue);
                            },
                            items: <String>['One', 'Two', 'Tree', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          );
                        },
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('ยกเลิก'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('ตกลง'),
                        ),
                      ],
                    )),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(13.736717, 100.523186),
                  zoom: 5,
                )),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white, borderRadius: BorderRadius.circular(25)),
          //   width: 400,
          //   height: 600,
          //   child: Column(children: [
          //   ]),
          // )
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       ElevatedButton(
          //         onPressed: () => AdaptiveTheme.of(context).setDark(),
          //         child: Text('Set Dark'),
          //         style: ElevatedButton.styleFrom(
          //           visualDensity: VisualDensity(horizontal: 4, vertical: 2),
          //         ),
          //       ),
          //       SizedBox(height: 8),
          //       ElevatedButton(
          //         onPressed: () => AdaptiveTheme.of(context).setLight(),
          //         child: Text('set Light'),
          //         style: ElevatedButton.styleFrom(
          //           visualDensity: VisualDensity(horizontal: 4, vertical: 2),
          //         ),
          //       ),
        ],
      ),
      // )
      //   ],
      // ),
    );
  }
}
