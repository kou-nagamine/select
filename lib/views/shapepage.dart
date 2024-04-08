import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'result.dart';

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
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) => Result(pantsinfo: fullpantsinfo))
              );
            }, child:Text('insert shape'),
          )
        ]
      ),
    );
  }
}