import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Youtube());

class Youtube extends StatefulWidget{
  State<StatefulWidget> createState() => _Youtube();
  }
  
class _Youtube extends State<Youtube>{
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
          title: Text('Youtube'),
        ),
        body: WebView(
          initialUrl: "https://youtube.com/channel/UCAVdrGXSoOMJx_IZzPDrDNA",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  