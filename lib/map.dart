import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Map());

class Map extends StatefulWidget{
  State<StatefulWidget> createState() => _Map();
  }
  
class _Map extends State<Map>{
  final Completer<WebViewController> _webcontrol =
    Completer<WebViewController>();
    
    void initState(){
      super.initState();
    }
    
    @override
    Widget build(BuildContext context) {

      return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.green,
          title: Text('Lokasi Undiksha'),
        ),
        body: WebView(
          initialUrl: "https://maps.app.goo.gl/MUzjhR5qN3zbVLyn7",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  