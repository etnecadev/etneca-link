import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/utils/index.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 200,
                fit: BoxFit.cover,
              )),
              SizedBox(height: 60),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft, end: Alignment.topRight,
                        // colors: [Colors.red, Color.fromARGB(183, 255, 145, 145)]),
                        colors: [Colors.red, Colors.pink]),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: TextField(
                    cursorColor: Colors.white,
                    style: GoogleFonts.kanit(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                    decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: GoogleFonts.kanit(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Colors.red, Colors.pink]),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: TextField(
                    cursorColor: Colors.white,
                    style: GoogleFonts.kanit(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.kanit(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        border: InputBorder.none),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child:
                      Text("Forgot you password?", style: GoogleFonts.kanit())),
              GestureDetector(
                onTap: () {
                  // Navigator.restorablePopAndPushNamed(context, "/menu");
                  Navigator.pushNamed(context, "/menu");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      color: AppTheme.light.primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Text("Sing In",
                        style: GoogleFonts.kanit(
                          textStyle:
                              TextStyle(fontSize: 25, color: Colors.white),
                        )),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("ข้อกำหนดและเงื่อนไขการใช้งาน",
                      style: GoogleFonts.kanit())),
            ]),
          ),
        ),
      ),
    );
  }
}
