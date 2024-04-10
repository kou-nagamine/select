import 'package:flutter/material.dart';
import 'package:select/components/button.dart';
import '../models/pants.dart';
import 'colorsselect.dart';

class ShapePage extends StatelessWidget{
  ShapePage({super.key});

  var shapes = [
    "ジーンズ",
    "スウェット",
    "スキニー"
  ]; 
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding( 
              padding: EdgeInsets.only(top: 1.0, bottom: 100.0),
              child: Text(
                "普段履くズボンは？", 
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center, 
                ),
              ),
          for (int i = 0; i < shapes.length; i++)...[
            Button(
              pantsinfo: PantsInfo(shape: shapes[i]), 
              transitionpage: ColorPage(pantsinfo: PantsInfo(shape:shapes[i]),)
            ),
            if (i < 2)
            SizedBox(height: 7),
            SizedBox(height: 60)
          ]
        ],
      ),
    );
  }
}

