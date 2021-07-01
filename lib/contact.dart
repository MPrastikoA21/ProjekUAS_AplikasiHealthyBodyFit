class Contact {

  int _id;
  String _hari;
  String _latihan;
  String _waktu;

  // konstruktor versi 1
  Contact(this._hari, this._latihan, this._waktu);
  // konstruktor versi 2: konversi dari Map ke Contact
  Contact.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._hari = map['hari'];
    this._latihan = map['latihan'];
    this._waktu = map['waktu'];
  }
  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;
  String get hari => _hari;
  String get latihan => _latihan;
  String get waktu=> _waktu;
  // setter
  set hari(String value) {
    _hari = value;
  }
  set latihan(String value) {
    _latihan = value;
  }

  set waktu(String value){
    _waktu = value;
  }
  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['hari'] = hari;
    map['latihan'] = latihan;
    map['waktu'] = waktu;
    return map;
  }
}