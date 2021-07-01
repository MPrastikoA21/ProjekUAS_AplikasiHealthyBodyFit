import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Instagram());

class Instagram extends StatefulWidget{
  State<StatefulWidget> createState() => _Instagram();
  }
  
class _Instagram extends State<Instagram>{
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
          title: Text('Instagram '),
        ),
        body: WebView(
          initialUrl: "https://www.instagram.com/invites/contact/?i=1vvq5zi20vep1&utm_content=2y60f12",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  