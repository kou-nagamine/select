import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'result.dart';
import '../components/button.dart';

class ShapePage extends StatelessWidget{
  final PantsInfo pantsinfo;

 ShapePage({required this.pantsinfo});

  @override
  Widget build (BuildContext context){
    var fullpantsinfos =  [
      PantsInfo(color:pantsinfo.color, shape:"スキニー"),
      PantsInfo(color:pantsinfo.color, shape:"ジーンズ"),
      PantsInfo(color:pantsinfo.color, shape:"ジャージ"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shape Page'),
      ),
      body: Column(
        children: <Widget>[
          ...fullpantsinfos.map((fullpantsinfos) => 
          Button(pantsinfo: PantsInfo(shape:fullpantsinfos.shape), transitionpage: Result(pantsinfo: fullpantsinfos)
          )),
        ]
      ),
    );
  }
}