import 'package:flutter/material.dart';
import 'package:select/components/button.dart';
import '../models/pants.dart';
import 'shapepage.dart';

class ColorPage extends StatelessWidget{
  ColorPage({super.key});

  var color = Colors.blue;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("colorpage"),
      ),
      body: Column(
        children: [
          Button(pantsinfo: PantsInfo(color: color), transitionpage: ShapePage(pantsinfo: PantsInfo(color: color)))
        ],
      ),
    );
  }
}

