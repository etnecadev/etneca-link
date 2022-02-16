import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/news.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  static const routeName = '/news';
  const NewsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        leading: Center(
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, size: 25,color: Color.fromRGBO(93, 90, 97, 1),),
            onPressed: () {
              // scaffoldKey.currentState?.openDrawer();
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'News',
          style: GoogleFonts.kanit(textStyle:TextStyle(
              color: Color.fromRGBO(93, 90, 97, 1),
              fontSize: 20,
              fontWeight: FontWeight.w500)),
        ),
      ),
      body: NewsComponent(),
    );
  }
}