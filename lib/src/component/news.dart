import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsComponent extends StatelessWidget {
    static const routeName = '/news';
  @override
  Widget build(BuildContext context) {
    return Material(
      
          child: AnimationLimiter(
        child: GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              // mainAxisSpacing: 5,
              crossAxisSpacing: 7,

              pattern: [
                WovenGridTile(0.9),
                WovenGridTile(
                  5 / 7,
                  crossAxisRatio: 1,
                  alignment: AlignmentDirectional.centerEnd,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: const Duration(milliseconds: 400),
                      columnCount: 2,
                      child: ScaleAnimation(
                        child: FadeInAnimation(
                          child: Container(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  
                                    "'กรมเจ้าท่า'ไฟเขียว!รับอุทธรณ์ประมงพื้นบ้านกว่า 9 พันลำ ให้ตีทะเบียนใหม่ ขีดเส้น 15 วัน",
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.kanit(textStyle:TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800))),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/news${index + 1}.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                    ),
                childCount: 5)),
      ),
    );
  }
}
//         // child: StaggeredGridView.countBuilder(
//         //   crossAxisCount: 4,
//         //   itemCount: 5,
//         //   itemBuilder: (BuildContext context, int index) =>
//         //       AnimationConfiguration.staggeredGrid(
//         //     position: index,
//         //     duration: const Duration(milliseconds: 400),
//         //     columnCount: 2,
//         //     child: ScaleAnimation(
//         //       child: FadeInAnimation(
//         //         child: Container(
//         //           decoration: BoxDecoration(
//         //               color: Colors.green,
//         //               borderRadius: BorderRadius.circular(10),
//         //               image: DecorationImage(
//         //                   image: AssetImage('assets/images/news${index + 1}.png'),
//         //                   fit: BoxFit.fill)),
//         //         ),
//         //       ),
//         //     ),
//         //   ),
//         //   staggeredTileBuilder: (int index) =>
//         //       StaggeredTile.count(2, index.isEven ? 2 : 1.5),
//         //   mainAxisSpacing: 4,
//         //   crossAxisSpacing: 4,
//         // ),
//       ),
//     ),
//   );
// }
