import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Petak());

class Petak extends StatefulWidget{
  State<StatefulWidget> createState() => _Petak();
  }
  
class _Petak extends State<Petak>{
  final Completer<WebViewController> _webcontrol =
    Completer<WebViewController>();
    
    void initState(){
      super.initState();
    }
    
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.green,
          title: Text('Lokasi Indonesia'),
        ),
        body: WebView(
          initialUrl: "https://maps.app.goo.gl/ntdAW7WSuHe2CJq5A",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  