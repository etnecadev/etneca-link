import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/scaffold/ScaffoldWidget.dart';
import 'package:flutter_project_template/src/page/index.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  static const routeName = '/map';
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
    return ScaffoldWidget(
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
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
      child: 
      // Stack(
      //   children: [
          Container(
            child: GoogleMap(
              initialCameraPosition:
                  const CameraPosition(target: LatLng(0.0, 0.0)),
            ),
          ),
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
          //     ],
          //   ),
          // )
      //   ],
      // ),
    );
  }
}
