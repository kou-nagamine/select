import 'package:flutter/material.dart';
import '../models/pants.dart';
import '../components/button.dart';
import 'questions.dart';

class ColorPage extends StatelessWidget{
  final PantsInfo pantsinfo;

 ColorPage({super.key, required this.pantsinfo});

  @override
  Widget build (BuildContext context){
    var fullpantsinfos =  [
      PantsInfo(color:Color.fromARGB(255, 22, 76, 120), shape:pantsinfo.shape),
      PantsInfo(color:Color.fromARGB(255, 32, 36, 39), shape:pantsinfo.shape),
      PantsInfo(color:Color.fromARGB(255, 47, 27, 27), shape:pantsinfo.shape),
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
              child: Text(
                "そのズボンの色は？", 
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center),
            ),
            for( int i = 0; i < fullpantsinfos.length; i++ )...[
              Button(
                pantsinfo: PantsInfo(color: fullpantsinfos[i].color),
                transitionpage: SixQuestion(pantsinfo: fullpantsinfos[i]),
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