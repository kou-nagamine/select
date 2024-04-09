import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'result.dart';
import '../components/button.dart';

class ShapePage extends StatelessWidget{
  final PantsInfo pantsinfo;

 ShapePage({required this.pantsinfo});

  @override
  Widget build (BuildContext context){
    var fullpantsinfo = PantsInfo(color:pantsinfo.color, shape:"スキニー");
    return Scaffold(
      appBar: AppBar(
        title: Text('Shape Page'),
      ),
      body: Column(
        children: <Widget>[
          Button(pantsinfo: fullpantsinfo, transitionpage: Result(pantsinfo: fullpantsinfo)),
        ]
      ),
    );
  }
}