import 'package:flutter/material.dart';
import 'package:select/components/button.dart';
import '../models/pants.dart';

class SelectPage extends StatelessWidget{
  final List<String> items;
  final String title;
  final Widget nextpage;

  SelectPage({super.key, required this.items, required this.title, required this.nextpage});

  Widget build(BuildContext context) {

  var select1info = [
    PantsInfo(color: Colors.grey, shape:items[0]),
    PantsInfo(color: Colors.grey, shape:items[1]),
    PantsInfo(color: Colors.grey, shape:items[2])
  ];
    return Scaffold(
      appBar: AppBar(
        title: Text("")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding( 
              padding: EdgeInsets.only(top: 1.0, bottom: 100.0),
              child: Text(title, style: TextStyle(fontSize: 30)),
            ),
            for(int i = 0; i < select1info.length; i++)...[
              Button(
                pantsinfo: PantsInfo(color: select1info[i].color,shape: select1info[i].shape),
                transitionpage: nextpage,
              ),
              if (i < 2)
                SizedBox(height: 7),
                SizedBox(height: 60)
            ]
          ],
        ) 
      )
    );
  }
}