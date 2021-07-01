import 'package:HealthyBodyFit/healtyhcalc.dart';
import 'package:HealthyBodyFit/result.dart';
import 'package:flutter/material.dart';

class HealthyCalculatorScreen extends StatefulWidget {
  HealthyCalculatorScreen({this.nama});
  final String nama;
  @override
  _HealthyCalculatorScreenState createState() => _HealthyCalculatorScreenState();
}

class _HealthyCalculatorScreenState extends State<HealthyCalculatorScreen> {
  double _water = 1;
  double _Healthy = 0;

  healthymodel _healthymodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  "images/kebugaran.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "KUALITAS TUBUH",
                style: TextStyle(
                    color: Colors.green[700],
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "We care about your healthy",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Waktu Olahraga Perminggu (jam)",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 1,
                  max: 20,
                  onChanged: (water) {
                    setState(() {
                      _water = water;
                    });
                  },
                  value: _water,
                  divisions: 19,
                  activeColor: Colors.green,
                  label: "$_water",
                ),
              ),
              Text(
                "$_water jam",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      _Healthy = _water + 0;

                      if (_Healthy >= 8) {
                        _healthymodel = healthymodel(
                            Healthy: _Healthy,
                            isNormal: true,
                            comments: "Kualitas Tubuh Baik");
                      } else if (_Healthy >= 4 && _Healthy < 8) {
                        _healthymodel = healthymodel(
                            Healthy: _Healthy,
                            isNormal: false,
                            comments: "Kualitas Tubuh Buruk");
                      } else {
                        _healthymodel = healthymodel(
                            Healthy: _Healthy,
                            isNormal: false,
                            comments: "ANDA LESU!!");
                      }
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Result(
                              healthymodel: _healthymodel,
                                )));
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: Text("CEK KUALITAS"),
                  textColor: Colors.white,
                  color: Colors.green,
                ),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
