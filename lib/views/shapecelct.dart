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
      PantsInfo(color:pantsinfo.color, shape:"jeans"),
      PantsInfo(color:pantsinfo.color, shape:"sweat"),
      PantsInfo(color:pantsinfo.color, shape:"skinny"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding( 
              padding: EdgeInsets.only(top: 1.0, bottom: 100.0),
              child: Text("普段はくズボンは？", style: TextStyle(fontSize: 30)),
            ),
            for( int i = 0; i < fullpantsinfos.length; i++ )...[
              Button(
                pantsinfo: PantsInfo(shape: fullpantsinfos[i].shape),
                transitionpage: Result(pantsinfo: fullpantsinfos[i]),
              ),
              if (i < 2)
              SizedBox(height: 7),
              SizedBox(height: 60)
            ],
          ]
        ),
      )
    );
  }
}