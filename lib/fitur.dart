import 'package:flutter/material.dart';
import 'package:HealthyBodyFit/kalkulasikebugaran.dart';
// import 'package:uas_mobile/home_screen.dart';
// import 'package:uas_mobile/scanner.dart';
import 'package:HealthyBodyFit/show.dart';
import 'package:HealthyBodyFit/manfaatlatihan.dart';

import 'home_screen.dart';

class Fitur extends StatelessWidget {
  Fitur({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Fitur Healthy Body Fit"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('images/fitur.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.blue,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),

                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Fitur Kebugaran Yang Tersedia:',
                      style: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.6)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: 400,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 0),
                        padding: EdgeInsets.only(top: 20),
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.scanner,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Qrcode()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green,
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'QR Code',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 12),
                        padding: EdgeInsets.only(top: 20),
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.add_chart,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Show()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green,
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Tambah Data',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 0),
                        padding: EdgeInsets.only(top: 20),
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.accessibility,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HealthyCalculatorScreen()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green,
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Cek Bugar',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 12),
                        padding: EdgeInsets.only(top: 20),
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          border: Border.all(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.picture_in_picture_alt_outlined,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Manfaatlatihan()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green,
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Latihan',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
