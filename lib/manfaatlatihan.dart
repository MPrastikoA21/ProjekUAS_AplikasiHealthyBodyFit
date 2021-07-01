import 'package:flutter/material.dart';

class Manfaatlatihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:Text("MANFAAT LATIHAN"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 150,
                      height: 150,
                      color: Colors.greenAccent,
                      child: new Image(image: AssetImage('images/situp.jpg'),fit: BoxFit.cover,)
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        height: 150,
                        color: Colors.green[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("SIT UP",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Menjaga Kestabilan Gerakan Tubuh,",style: TextStyle(fontSize: 13,),),
                            Text("Menjaga Sistem Metabolisme,",style: TextStyle(fontSize: 13,),),
                            Text("Melancarkan Peredaran Darah,",style: TextStyle(fontSize: 13,),),
                            Text("Menjaga Kesehatan Otot,",style: TextStyle(fontSize: 13,),),


                          ],
                        ),

                      )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 150,
                      height: 150,
                      color: Colors.greenAccent,
                      child: new Image(image: AssetImage('images/angkat.jpg'),fit: BoxFit.cover,)
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        height: 150,
                        color: Colors.green[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("ANGKAT BEBAN",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Penurunan berat badan,",style: TextStyle(fontSize: 13,),),
                            Text("Kesehatan tulang lebih optimal,",style: TextStyle(fontSize: 13,),),
                            Text("Keseimbangan yang lebih baik,",style: TextStyle(fontSize: 13,),),
                            Text("Tubuh kencang dan berotot,",style: TextStyle(fontSize: 13,),),
                          ],
                        ),

                      )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 150,
                      height: 150,
                      color: Colors.greenAccent,
                      child: new Image(image: AssetImage('images/sprint.jpg'),fit: BoxFit.cover,)
                  ),

                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        height: 150,
                        color: Colors.green[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("LARI SPRINT",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Meningkatkan Kebugaran Jantung,",style: TextStyle(fontSize: 13,),),
                            Text("Meningkatkan Ketahanan Tubuh,",style: TextStyle(fontSize: 13,),),
                            Text("Bagus untuk Pembentukan Otot,",style: TextStyle(fontSize: 13,),),
                            Text("Menurunkan Berat Badan,",style: TextStyle(fontSize: 13,),),
                          ],
                        ),

                      )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 150,
                      height: 150,
                      color: Colors.greenAccent,
                      child: new Image(image: AssetImage('images/backup.png'),fit: BoxFit.cover,)
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        height: 150,
                        color: Colors.green[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("BACK UP",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Mengecilkan perut bagian bawah,",style: TextStyle(fontSize: 13,),),
                            Text("Mengecilkan perut bagian samping,",style: TextStyle(fontSize: 13,),),
                            Text("Membakar lemak seluruh tubuh,",style: TextStyle(fontSize: 13,),),
                            Text("Mencegah osteoporosis,",style: TextStyle(fontSize: 13,),),
                          ],
                        ),

                      )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 150,
                      height: 150,
                      color: Colors.greenAccent,
                      child: new Image(image: AssetImage('images/kayang.png'),fit: BoxFit.cover,)
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        height: 150,
                        color: Colors.green[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("KAYANG",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Membantu membentuk tubuh ideal,",style: TextStyle(fontSize: 13,),),
                            Text("Menghilangkan pegal pada pinggang,",style: TextStyle(fontSize: 13,),),
                            Text("Melancarkan pernafasan,",style: TextStyle(fontSize: 13,),),
                            Text("Meningkatkan kelenturan tubuh,",style: TextStyle(fontSize: 13,),),
                          ],
                        ),

                      )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 150,
                      height: 150,
                      color: Colors.greenAccent,
                      child: new Image(image: AssetImage('images/jumping.jpg'),fit: BoxFit.cover,)
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(13),
                      height: 150,
                      color: Colors.green[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("JUMPING JACK",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("Melatih kekuatan seluruh otot tubuh,",style: TextStyle(fontSize: 13,),),
                          Text("Meningkatkan kesehatan jantung,",style: TextStyle(fontSize: 13,),),
                          Text("Memperkuat tulang,",style: TextStyle(fontSize: 13,),),
                          Text("Melatih daya tahan otot,",style: TextStyle(fontSize: 13,),),
                        ],
                      ),

                    ),

                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}