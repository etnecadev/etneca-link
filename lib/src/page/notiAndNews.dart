import 'package:carousel_slider/carousel_slider.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/scaffold/scaffoldWidget.dart';
import 'package:flutter_project_template/src/page/index.dart';

final List<String> imgList = [
  'assets/images/bg1.jpg',
  'assets/images/bg2.png',
  'assets/images/bg3.jpg',
  'assets/images/bg4.jpg',
];

class NotiAndNews extends StatelessWidget {
  static const routeName = '/news';
  const NotiAndNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: Text(''),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 500,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 200),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 75,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              width: double.infinity,
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              color: Colors.red[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// _newgridview() {
//   return GridView.count(
//     // Create a grid with 2 columns. If you change the scrollDirection to
//     // horizontal, this produces 2 rows.
//     crossAxisCount: 3,
//     // Generate 100 widgets that display their index in the List.
//     children: List.generate(6, (index) {
//       return Center(
//           child: Container(
//               decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
//               child: Container(
//                   padding: EdgeInsets.all(10),
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [Text("EVENT"), Text("27/1/2565")],
//                         ),
//                         Text("ahhhhhhh"),
//                         RaisedButton(
//                           onPressed: () => {},
//                           color: Colors.blue,
//                           child: Text(
//                             'Read More+',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       ]))));
//     }),
//   );
// }