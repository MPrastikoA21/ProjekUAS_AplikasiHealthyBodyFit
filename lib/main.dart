import 'package:flutter/material.dart';
import 'package:HealthyBodyFit/entryform.dart';
import 'package:HealthyBodyFit/fitur.dart';
import 'package:HealthyBodyFit/youtube.dart';
import 'package:HealthyBodyFit/show.dart';
import 'package:HealthyBodyFit/detail.dart';
import 'package:HealthyBodyFit/kalkulasikebugaran.dart';
import 'package:HealthyBodyFit/about.dart';
import 'package:HealthyBodyFit/kebugaran.dart';

void main() {
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("Healthy Body Fit"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Fitness Fighter"),
            accountEmail: new Text("fitnessfighter@undiksha.ac.id"),
            currentAccountPicture: new GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                          nama: "Fitness Fighter",
                        )));
              },
              child: new CircleAvatar(
                backgroundImage: AssetImage('images/foto.png'),
              ),
            ),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage('images/backgroundfoto.png'), fit: BoxFit.cover)),
          ),
          new ListTile(
            title: new Text("Fitur Kebugaran"),
            trailing: new Icon(Icons.assignment),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Fitur(
                        nama: "Fitness Fighter",
                      )));
            },
          ),
          new ListTile(
            title: new Text("About"),
            trailing: new Icon(Icons.info),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new About(
                        nama: "Fitness Fighter",
                      )));
            },
          ),
          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
          ),
        ]),
      ),
      // body: Center(
      //   child: Container(
      //     padding: EdgeInsets.all(3),
      //     child: Image.asset('images/1.png')
      //   )
      // )
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      "images/home.png",
                      fit: BoxFit.contain,
                    ),
                  ),

                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Sistem Kebugaran Masyarakat",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ))),
    );
  }
}
