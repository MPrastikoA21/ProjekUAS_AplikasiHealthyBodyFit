import 'package:flutter/material.dart';
import 'package:HealthyBodyFit/instagram.dart';
import 'package:HealthyBodyFit/area.dart';
import 'youtube.dart';
import 'map.dart';

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Profil $nama"),
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
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage('images/foto.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Fitness Fighter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
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
                      'fitnessfighter@gmail.com',
                      style: TextStyle(
                          fontSize: 15, color: Colors.blue.withOpacity(0.6)),
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
                                Icons.live_tv,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Youtube()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green[700],
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Youtube',
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
                                Icons.home,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Petak()),
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
                                  'Area',
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
                                Icons.add_ic_call,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Instagram()),
                                );
                              },
                            ),
                            Container(
                              color: Colors.green[700],
                              margin: EdgeInsets.only(top: 15),
                              width: 125,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Instagram',
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
                                Icons.add_location_alt,
                                color: Colors.red,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Map()),
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
                                  'Indonesia',
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
