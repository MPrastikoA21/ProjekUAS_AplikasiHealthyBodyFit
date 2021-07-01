import 'package:flutter/material.dart';
import 'healtyhcalc.dart';

class Result extends StatelessWidget {
  final healthymodel;

  Result({this.healthymodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Tingkat Kebugaran Tubuh Anda',
            style: TextStyle(
                color: Colors.green[700],
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          Container(
            height: 200,
            width: 200,
            child: healthymodel.isNormal
                ? Image.asset(
                    "images/bugar.png",
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    "images/lemah.png",
                    fit: BoxFit.contain,
                  ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "${healthymodel.Healthy.round()} Jam Seminggu",
            style: TextStyle(
                color: Colors.green[700],
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "${healthymodel.comments}",
            style: TextStyle(
                color: Colors.green[700],
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          healthymodel.isNormal
              ? Text(
                  "Kualitas Kebugaran Normal",
                  style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  "Kualitas Kebugaran Tidak Normal.",
                  style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              label: Text("CEK KEMBALI"),
              textColor: Colors.white,
              color: Colors.green,
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}
