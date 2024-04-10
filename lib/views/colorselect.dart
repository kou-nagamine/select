import 'package:flutter/material.dart';
import 'package:select/components/button.dart';
import '../models/pants.dart';
import 'shapecelct.dart';

class ColorPage extends StatelessWidget{
  ColorPage({super.key});

  var colors = [
    Colors.black,
    const Color.fromARGB(255, 55, 25, 25),
    Colors.grey,
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
              child: Text("普段はくズボンは？", style: TextStyle(fontSize: 30)),
          ),
          for (int i = 0; i < colors.length; i++)...[
            Button(
              pantsinfo: PantsInfo(color: colors[i]), 
              transitionpage: ShapePage(pantsinfo: PantsInfo(color: colors[i]))
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

