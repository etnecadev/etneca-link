import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/utils/index.dart';

class ShipDataPage extends StatelessWidget {
  static const routeName = '/shipdatapage';
  const ShipDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ContainedTabBarView(
          tabBarProperties: TabBarProperties(
            indicator: ContainerTabIndicator(
              color: Color.fromRGBO(166, 210, 204, 1),
              widthFraction: 0.3,
              height: 4,
              padding: const EdgeInsets.only(top: 15),
            ),
            indicatorColor: Colors.white,
            labelColor: Color.fromRGBO(166, 210, 204, 1),
            unselectedLabelColor: Color.fromRGBO(203, 202, 205, 1),
          ),
          tabs: [
            Text('ข้อมูล VMS'),
            Text('สถานะอุปกณ์'),
            Text('ประวัติตรวจเช็ค'),
          ],
          views: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      width: double.infinity,
                      height: 350,
                    ),
                    Container(
                      height: 550,
                      margin: EdgeInsets.only(top: 18),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Helix Test",
                            style: TextStyle(
                                color: Colors.red[900],
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("หมายเลขอุปกรณ์")),
                              Expanded(child: Text("01259148SKY2EF9")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("ทะเบียนเรือ")),
                              Expanded(child: Text("4545777")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("เวลาจีพีเอส")),
                              Expanded(child: Text("22/09/2021 10:29:12")),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "ตำแหน่ง (VMS)",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("ละติจูด(Lat)")),
                              Expanded(child: Text("6° 53.162' N")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("ลองติจูด(Long)")),
                              Expanded(child: Text("101° 15.412' E")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("สถานที่ใกล้เคียง")),
                              Expanded(child: Text("-")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("ความเร็ว(Knot)")),
                              Expanded(child: Text("0.10 Knots")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("ทิศทาง")),
                              Expanded(child: Text("0.00°")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("แรงดันไฟฟ้า")),
                              Expanded(child: Text("-")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("สัญญาณจีพีเอส")),
                              Expanded(child: Text("-")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("สัญญาณดาวเทียม")),
                              Expanded(child: Text("-")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("วันครบกำหนดค่าใช้บริการ")),
                              Expanded(child: Text("02/12/545")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("วันหมดรับประกันอุปกรณ์")),
                              Expanded(child: Text("08/04/2562")),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  child: OutlineButton(
                                    highlightedBorderColor: Colors.red[900],
                                    borderSide:
                                        BorderSide(width: 2, color: Colors.red),
                                    onPressed: () {},
                                    child: Text(
                                      "24 ตำแหน่งล่าสุด",
                                      style: TextStyle(
                                          color: Colors.red[900],
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  child: OutlineButton(
                                    highlightedBorderColor: Colors.red[900],
                                    borderSide:
                                        BorderSide(width: 2, color: Colors.red),
                                    onPressed: () {},
                                    child: Text(
                                      "ประวัติการเดินเรือ",
                                      style: TextStyle(
                                          color: Colors.red[900],
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
