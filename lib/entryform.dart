import 'package:flutter/material.dart';


import 'contact.dart';
class EntryForm extends StatefulWidget {
  final Contact contact;
  EntryForm(this.contact);
  @override
  EntryFormState createState() => EntryFormState(this.contact);
}
//class controller
class EntryFormState extends State<EntryForm> {
  Contact contact;
  EntryFormState(this.contact);
  TextEditingController hariController = TextEditingController();
  TextEditingController latihanController = TextEditingController();
  TextEditingController waktuController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //kondisi
    if (contact != null) {
      hariController.text = contact.hari;
      latihanController.text = contact.latihan;
      waktuController.text = contact.waktu;
    }
    //rubah
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: contact == null ? Text('Tambah List Latihan') : Text('Edit List Latihan'),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left:10.0, right:10.0),
          child: ListView(
            children: <Widget> [
              // hari
              Padding (
                padding: EdgeInsets.only(top:20.0, bottom:20.0),
                child: TextField(
                  controller: hariController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Hari Latihan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // telepon
              Padding (
                padding: EdgeInsets.only(top:20.0, bottom:20.0),
                child: TextField(
                  controller: latihanController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Jenis Latihan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLines: null,
                  textInputAction: TextInputAction.newline,
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              Padding (
                padding: EdgeInsets.only(top:20.0, bottom:20.0),
                child: TextField(
                  controller: waktuController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Waktu Latihan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),

              // tombol button
              Padding (
                padding: EdgeInsets.only(top:20.0, bottom:20.0),
                child: Row(
                  children: <Widget> [
                    // tombol simpan
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (contact == null) {
                            // tambah data
                            contact = Contact(hariController.text, latihanController.text, waktuController.text);
                          } else {
                            // ubah data
                            contact.hari = hariController.text;
                            contact.latihan = latihanController.text;
                            contact.waktu = waktuController.text;
                          }
                          // kembali ke layar sebelumnya dengan membawa objek contact
                          Navigator.pop(context, contact);
                        },
                      ),
                    ),
                    Container(width: 5.0,),
                    // tombol batal
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Cancel',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}