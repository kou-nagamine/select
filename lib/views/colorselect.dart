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
        title: Text("colorpage"),
      ),
      body: Column(
        children: <Widget>[
          ...colors.map((colors) => 
          Button(pantsinfo: PantsInfo(color: colors), transitionpage: ShapePage(pantsinfo: PantsInfo(color: colors)))
          ),
        ],
      ),
    );
  }
}

