import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  static const routeName = '/notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Notification',
          style: GoogleFonts.kanit(
              textStyle: TextStyle(
                  color: Color.fromRGBO(93, 90, 97, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (int i = 0; i < 6; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                color: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.7),
                elevation: 1,
                child: Container(
                  width: double.infinity,
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text("แจ้งเตือนสัญญาณ VMS",
                                style: GoogleFonts.kanit(
              textStyle:TextStyle(
                                    color: Color.fromRGBO(101, 164, 150, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text("14/02/2022",
                                style: GoogleFonts.kanit(
              textStyle:TextStyle(
                                    color: Color.fromRGBO(237, 116, 108, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                            "เรือ ธ.มานะพานิช สัญญาณ VMS ขาดหายมากกว่า 2 ชั่วโมง (สัญญาณครั้งสุดท้ายมาเมื่อ 14/02/2022 11:59:12)",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.kanit(
              textStyle:TextStyle(
                                color: Color.fromRGBO(93, 90, 97, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
