import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("App Details"),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
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
                        image: DecorationImage(
                            image: AssetImage('images/home.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Column(children: <Widget>[
            Text(
              'Kebugaran jasmani merupakan kondisi jasmani yang bersangkutan dengan kemampuan fungsi tubuh dalam melakukan pekerjaan secara optimal dan efisien, Kebugaran jasmani dapat diperoleh dengan berbagai cara, salah satu diantaranya adalah dengan aktivitas fisik atau berolahraga yang melibatkan komponen kebugaran jasmani dengan metode latihan yang teratur dan terukur. ',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Maka melalui Aplikasi ini, user dapat melakukan latihan dan cek kondisi kebugaran setiap harinya dengan teratur, dengan berbagai fitur yang ada seperti membuat jadwal latihan rutin harian dan fitur menarik lainnya.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w400),
            ),
          ]),
        )
      ]),
    );
  }
}
