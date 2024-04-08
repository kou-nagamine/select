import 'package:flutter/material.dart';
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
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => ShapePage(pantsinfo: PantsInfo(color:color ),)),
              );
            },
            child: Text(""),
          ),
        ],
      ),
    );
  }
}

